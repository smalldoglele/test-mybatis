package cn.vagile.test;


import cn.vagile.test.bean.Blog;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.Reader;

/**
 * Hello world!
 */
public class App {
    public static void main(String[] args) throws IOException {
        String configName = "mybatis_config.xml";
        Reader resourceAsReader = Resources.getResourceAsReader(configName);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(resourceAsReader);
        try(SqlSession sqlSession = sqlSessionFactory.openSession()){
            Blog blog=sqlSession.selectOne("cn.vagile.test.mapper.BlogMapper.selectBlog",101);
            System.out.println(blog);
        }
    }
}
