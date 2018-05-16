$(document).ready(function() {
    // Generate a simple captcha
    function randomNumber(min, max) {
        return Math.floor(Math.random() * (max - min + 1) + min);
    };
    $('#captchaOperation').html([randomNumber(1, 100), '+', randomNumber(1, 200), '='].join(' '));

    $('#defaultForm').bootstrapValidator({
//        live: 'disabled',
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
			/*
            firstName: {
                validators: {
                    notEmpty: {
                        message: '姓名不能为空'
                    }
                }
            },
            lastName: {
                validators: {
                    notEmpty: {
                        message: '姓名不能为空'
                    }
                }*/
            },
			
        	nation:{
	    		validators: {
	                notEmpty: {
	                    message: '家庭住址不能为空'
	                }
        	},
            tno: {
                message: '用户名无效',
                validators: {
                    notEmpty: {
                        message: '用户名不能为空'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9_\.]+$/,
                        message: '用户名只能由字母、数字、点和下划线组成'
                    }
                }
            },
			idCard: {
                message: '身份证号无效',
                validators: {
                    notEmpty: {
                        message: '身份证号不能为空'
                    },
                    regexp: {
                        regexp: /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/,
                        message: '身份证号格式不正确'
                    }
                }
            },
			phoneNumber: {
                message: '电话号码无效',
                validators: {
                    notEmpty: {
                        message: '电话号码不能为空'
                    }
					,
                    regexp: {
                        regexp:/^1(3|4|5|7|8)\d{9}$/,
                        message: '电话号码格式不正确'
                    }
                }
            },
            email: {
                validators: {
				  notEmpty: {
                        message: '邮箱不能为空'
                    },
                    emailAddress: {
                        message: '电子邮箱格式不正确'
                    }
                }
            },
            
            age: {
                validators: {
				 notEmpty: {
                        message: '出生日期不能为空'
                    },
                    date: {
                        format: 'YYYY/MM/DD',
                        message: '出生日期格式不正确'
                    }
                }
            },
            sex: {
                validators: {
                    notEmpty: {
                        message: '请选择性别'
                    }
                }
            }
        }
    });

    // Validate the form manually
    $('#validateBtn').click(function() {
        $('#defaultForm').bootstrapValidator('validate');
    });

    $('#resetBtn').click(function() {
        $('#defaultForm').data('bootstrapValidator').resetForm(true);
    });
});