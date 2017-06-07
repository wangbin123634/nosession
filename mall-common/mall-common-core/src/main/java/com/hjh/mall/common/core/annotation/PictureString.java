package com.hjh.mall.common.core.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.OverridesAttribute;
import javax.validation.Payload;
import javax.validation.ReportAsSingleViolation;
import javax.validation.constraints.Pattern;

import com.hjh.mall.common.core.constants.ValidationConstants;
import com.hjh.mall.common.core.constants.ValidationErrorCodes;

@Target({ ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.ANNOTATION_TYPE })
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Constraint(validatedBy = {})
@ReportAsSingleViolation
@Pattern(regexp = "")
public @interface PictureString {

	Class<?>[] groups() default {};

	String message() default ValidationConstants.ERROR_STRING;

	Class<? extends Payload>[] payload() default {};

	String errorCode() default ValidationErrorCodes.STRING_ERROR;

	@OverridesAttribute(constraint = Pattern.class, name = "regexp")
	String regexp() default "[^\\s]+\\.(jpg|gif|png|bmp|jpeg|BMP|JPG|JPEG|PNG|GIF)";
}
