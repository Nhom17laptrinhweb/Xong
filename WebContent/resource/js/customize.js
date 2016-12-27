$(function() {

    // We can attach the `fileselect` event to all file inputs on the page
    $(document).on('change', ':file', function() {
        var input = $(this),
            numFiles = input.get(0).files ? input.get(0).files.length : 1,
            label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
        input.trigger('fileselect', [numFiles, label]);
    });

    // We can watch for our custom `fileselect` event like this
    $(document).ready(function() {
        $(':file').on('fileselect', function(event, numFiles, label) {

            var input = $(this).parents('.input-group').find(':text'),
                log = numFiles > 1 ? numFiles + ' files selected' : label;

            if (input.length) {
                input.val(log);
            } else {
                if (log) alert(log);
            }

        });
    });

});

$(document).on('ready', function() {
    $("#input-4").fileinput({ showCaption: false });


});
/* datetime picker */

$(function() {
	
	
	$('#datetimepicker1').datetimepicker({format : 'DD/MM/YYYY hh:mm A' });
	$('#datetimepicker2').datetimepicker({
	    useCurrent: false,
	    format: 'DD/MM/YYYY hh:mm A'
	});
	$("#datetimepicker1").on("dp.change", function (e) {	
        $('#datetimepicker2').data("DateTimePicker").minDate(e.date);
    });
    $("#datetimepicker2").on("dp.change", function (e) {
        $('#datetimepicker1').data("DateTimePicker").maxDate(e.date);
    });
    $('#datetimepicker3').datetimepicker({format : 'DD/MM/YYYY hh:mm A' });
    
	  
});


/* Bootstrap Live Form Validation with Popover */
$(document).ready(function() {
    // 
    $.fn.goValidate = function() {
        var $form = this,
            $inputs = $form.find('input:text, input:password'),
            $selects = $form.find('select'),
            $textAreas = $form.find('textarea'),
            $birthday = $form.find('date');

        var validators = {
            name: {
                regex: /^([\u0000-\uFFFF]{2,}[^$|\s*])$/
            },
            username: {
                regex: /^([\u0000-\uFFFF]{6,}[^$|\s*])$/
            },
            firstName: {
                regex: /^([\u0000-\uFFFF]{2,}[^$|\s*])$/
            },
            lastName: {
                regex: /^([\u0000-\uFFFF]{2,}[^$|\s*])$/
            },
            town: {
                regex: /^([\u0000-\uFFFF]{2,}[^$|\s*])$/
            },
            postcode: {
                regex: /^.{3,}$/
            },
            password1: {
                regex: /(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}/
            },
            password1_repeat: {
                regex: /(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}/
            },
            email: {
                regex: /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/
            },
            phone: { //sdt va cmnd
                regex: /^[0-9]\d{9,12}$/
            },
            cmnd: { //sdt va cmnd
                regex: /^[0-9]\d{8,9}$/
            },
            number: { //so diem
                regex: /^[0-9]\d{0,2}$/
            },
            year: { //so diem
                regex: /^[0-9]\d{3}(\-[0-9]\d{3})?$/
            },
            body: {
                regex: /^.{3,}$/
            },
            country: {
                regex: /^(?=\s*\S).*$/,
            }
        };
        var validate = function(klass, value) {
            var isValid = true,
                error = '';

            if (!value && /required/.test(klass)) {
                error = 'This field is required';
                isValid = false;
            } else {
                klass = klass.split(/\s/);
                $.each(klass, function(i, k) {
                    if (validators[k]) {
                        if (value && !validators[k].regex.test(value)) {
                            isValid = false;
                            error = validators[k].error;
                        }
                    }
                });
            }
            return {
                isValid: isValid,
                error: error
            }
        };
        var showError = function($e) {
            var klass = $e.attr('class'),
                value = $e.val(),
                test = validate(klass, value);

            $e.removeClass('invalid');
            $('#form-error').addClass('hide');

            if (!test.isValid) {
                $e.addClass('invalid');

                if (typeof $e.data("shown") == "undefined" || $e.data("shown") == false) {
                    $e.popover('show');
                }

            } else {
                $e.popover('hide');
            }
        };

        $inputs.keyup(function() {
            showError($(this));
        });
        $selects.change(function() {
            showError($(this));
        });
        $textAreas.keyup(function() {
            showError($(this));
        });
        $birthday.change(function() {
            showError($(this));
        })

        $inputs.on('shown.bs.popover', function() {
            $(this).data("shown", true);
        });

        $inputs.on('hidden.bs.popover', function() {
            $(this).data("shown", false);
        });

        $form.submit(function(e) {

            $inputs.each(function() { /* test each input */
                if ($(this).is('.required') || $(this).hasClass('invalid')) {
                    showError($(this));
                }
            });
            $selects.each(function() { /* test each input */
                if ($(this).is('.required') || $(this).hasClass('invalid')) {
                    showError($(this));
                }
            });
            $textAreas.each(function() { /* test each input */
                if ($(this).is('.required') || $(this).hasClass('invalid')) {
                    showError($(this));
                }
            });
            if ($form.find('input.invalid').length) { /* form is not valid */
                e.preventDefault();
                $('#form-error').toggleClass('hide');
            }
        });
        return this;
    };

    $('form').goValidate();
});


/* Light box with Modal bootstrap */
$(function() {
    $('f').imageLightbox();


});
/* Modal box Ajax  */
$(document).ready(function() {
    $(document).ajaxComplete(function() {
        $('form').goValidate();

    });
    //lay link qua href cua the btn
    $("#myModal").on("show.bs.modal", function(e) {
        var link = $(e.relatedTarget);
        $(this).find(".modal-body").load(link.attr("href"));

    });
    //Reset modal box
    $("#myModal").on("hide.bs.modal", function() {
        $(".modal-body").html("");
    });

});
/* carousel bootstrap multiple items */
$(document).ready(function() {

    var owl = $(".owl-carousel");

    owl.owlCarousel({
        autoPlay: true,
        stopOnHover: true,
        autoWidth: true,
        itemsCustom: [
            [0, 2],
            [450, 2],
            [600, 2],
            [700, 2],
            [850, 3],
            [1000, 3],
            [1200, 3],
            [1400, 4],
            [1600, 4]
        ],
        navigation: false

    });



});
/* tab */
$(document).ready(function() {
    $("div.bhoechie-tab-menu>div.list-group>a").click(function(e) {
        e.preventDefault();
        $(this).siblings('a.active').removeClass("active");
        $(this).addClass("active");
        var index = $(this).index();
        $("div.bhoechie-tab>div.bhoechie-tab-content").removeClass("active");
        $("div.bhoechie-tab>div.bhoechie-tab-content").eq(index).addClass("active");
    });

});

/****************************************************/
function isEmail(emailStr)
{
        var emailPat=/^(.+)@(.+)$/
        var specialChars="\\(\\)<>@,;:\\\\\\\"\\.\\[\\]"
        var validChars="\[^\\s" + specialChars + "\]"
        var quotedUser="(\"[^\"]*\")"
        var ipDomainPat=/^\[(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})\]$/
        var atom=validChars + '+'
        var word="(" + atom + "|" + quotedUser + ")"
        var userPat=new RegExp("^" + word + "(\\." + word + ")*$")
        var domainPat=new RegExp("^" + atom + "(\\." + atom +")*$")
        var matchArray=emailStr.match(emailPat)
        if (matchArray==null) {
                return false
        }
        var user=matchArray[1]
        var domain=matchArray[2]

        // See if "user" is valid
        if (user.match(userPat)==null) {
            return false
        }
        var IPArray=domain.match(ipDomainPat)
        if (IPArray!=null) {
            // this is an IP address
                  for (var i=1;i<=4;i++) {
                    if (IPArray[i]>255) {
                        return false
                    }
            }
            return true
        }
        var domainArray=domain.match(domainPat)
        if (domainArray==null) {
            return false
        }

        var atomPat=new RegExp(atom,"g")
        var domArr=domain.match(atomPat)
        var len=domArr.length

        if (domArr[domArr.length-1].length<2 ||
            domArr[domArr.length-1].length>3) {
           return false
        }

        if (len<2)
        {
           return false
        }

        return true;
}
$(document).ready(function()
        {
            $('#form_register').submit(function(){

                // BƯỚC 1: Lấy dữ liệu từ form
                var username    = $.trim($('#username').val());
                var password    = $.trim($('#password').val());
                var re_password = $.trim($('#re_password').val());
                var email       = $.trim($('#email').val());
                var phone       = $.trim($('#phone').val());
                var address     = $.trim($('#address').val());

                // BƯỚC 2: Validate dữ liệu
                // Biến cờ hiệu
                var flag = true;

                // Username
                if (username == '' || username.length < 4){
                    $('#username_error').text('Tên đăng nhập phải lớn hơn 4 ký tự');
                    flag = false;
                }
                else{
                    $('#username_error').text('');
                }

                // Password
                if (password.length <= 0){
                    $('#password_error').text('Bạn phải nhập mật khẩu');
                    flag = false;
                }
                else{
                    $('#password_error').text('');
                }

                // Re password
                if (password != re_password){
                    $('#re_password_error').text('Mật khẩu nhập lại không đúng');
                    flag = false;
                }
                else{
                    $('#re_password_error').text('');
                }

                // Email
                if (!isEmail(email)){
                    $('#email_error').text('Email không được để trống và phải đúng định dạng');
                    flag = false;
                }
                else{
                    $('#email_error').text('');
                }

                return flag;
            });
        });
