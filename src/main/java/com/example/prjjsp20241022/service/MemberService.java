package com.example.prjjsp20241022.service;

import com.example.prjjsp20241022.dto.Member;
import com.example.prjjsp20241022.mapper.MemberMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional
public class MemberService {

    private final MemberMapper mapper;

    public void addMember(Member member) {
        mapper.insert(member);
    }

    public List<Member> list() {
        return mapper.selectAll();
    }
}