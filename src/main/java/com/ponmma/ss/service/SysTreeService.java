package com.ponmma.ss.service;

import com.ponmma.ss.dto.AclModuleLevelDto;
import com.ponmma.ss.dto.DeptLevelDto;
import com.ponmma.ss.entity.SysDept;

import java.util.List;

public interface SysTreeService {

    List<DeptLevelDto> deptTree();

    List<AclModuleLevelDto> aclModuleTree();

    List<AclModuleLevelDto> roleTree(int roleId);

    List<AclModuleLevelDto> userAclTree(int userId);

}
