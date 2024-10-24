package com.example.prjjsp20241022.mapper;

import com.example.prjjsp20241022.dto.Member;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface MemberMapper {

    @Insert("""
            INSERT INTO member
            (id, password, nick_name, description)
            VALUES (#{id}, #{password}, #{nickName}, #{description})
            """)
    int insert(Member member);

    @Select("""
            SELECT *
            FROM member
            ORDER BY id
            """)
    List<Member> selectAll();
}