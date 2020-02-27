package com.ponmma.ss.service;

import com.ponmma.ss.entity.SysRole;
import com.ponmma.ss.entity.SysUser;
import com.ponmma.ss.param.RoleParam;

import java.util.List;

public interface SysRoleService {

    void save(RoleParam param);

    void update(RoleParam param);

    List<SysRole> getAll();

    List<SysRole> getRoleListByUserId(int userId);

    List<SysRole> getRoleListByAclId(int aclId);

    List<SysUser> getUserListByRoleList(List<SysRole> roleList);

}
