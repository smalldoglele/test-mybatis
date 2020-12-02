package cn.vagile.test.mapper;

import cn.vagile.test.bean.Blog;
import org.apache.ibatis.annotations.Select;

public interface BlogMapper {
   // @Select("SELECT * FROM blog WHERE id = #{id}")
    Blog selectBlog(int id);
}
