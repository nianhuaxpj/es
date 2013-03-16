/**
 * Copyright (c) 2005-2012 https://github.com/zhangkaitao
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 */
package com.sishuok.es.web.admin.sys.user.exception;

/**
 * <p>User: Zhang Kaitao
 * <p>Date: 13-3-11 下午8:29
 * <p>Version: 1.0
 */
public class SysUserPasswordRetryLimitExceedException extends SysUserException {
    public SysUserPasswordRetryLimitExceedException(int retryLimitCount) {
        super("sysUser.password.retry.limit.exceed", new Object[] {retryLimitCount});
    }
}
