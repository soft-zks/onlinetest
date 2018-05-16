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
                }
            },
			*/
        	usercode: {
                message: '用户名无效',
                validators: {
                    notEmpty: {
                        message: '用户名不能位空'
                    }
                }
            },
            password: {
              //  message: '用户名无效',
                validators: {
                    notEmpty: {
                        message: '密码不能位空'
                    }
                }
            },
            newpassword: {
                validators: {
                    notEmpty: {
                        message: '密码不能位空'
                    }
                }
            },
            confirmPassword: {
                validators: {
                    notEmpty: {
                        message: '密码不能为空'
                    },
                    identical: {
                        field: 'newpassword',
                        message: '两次密码不一致'
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