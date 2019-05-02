package article.service;

import java.sql.Connection;
import java.sql.SQLException;

import article.dao.ArticleContentDao;
import article.dao.ArticleDao;
import article.model.Article;
import article.model.ArticleContent;
import jdbc.connection.ConnectionProvider;
import jdbc.JdbcUtil;

public class DeleteArticleService {
	
	ArticleContentDao articleContentDao = new ArticleContentDao();
	ArticleDao articleDao = new ArticleDao();
	
	public void deleteById(int no, String memberId) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
			
			Article article = articleDao.selectById(conn, no);
			if(article == null) {
				throw new ArticleNotFoundException();
			}
			
			ArticleContent content = articleContentDao.selectById(conn, no);
			if(content == null) {
				throw new ArticleContentNotFoundException();
			}
			
			articleDao.deleteById(conn, no);
			articleContentDao.deleteById(conn, no);
			conn.commit();
			
		} catch (SQLException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} catch (PermissionDeniedException e) {
			JdbcUtil.rollback(conn);
			throw e;
		} finally {
			JdbcUtil.close(conn);
		}
		
	}
}