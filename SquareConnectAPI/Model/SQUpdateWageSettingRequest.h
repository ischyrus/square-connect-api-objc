#import <Foundation/Foundation.h>
#import "SQObject.h"

/**
* Square Connect API
* Client library for accessing the Square Connect APIs
*
* OpenAPI spec version: 2.0
* Contact: developers@squareup.com
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/


#import "SQWageSetting.h"
@protocol SQWageSetting;
@class SQWageSetting;



@protocol SQUpdateWageSettingRequest
@end

@interface SQUpdateWageSettingRequest : SQObject

/* The new `WageSetting` object that completely replaces the existing one. 
 */
@property(nonatomic) SQWageSetting* wageSetting;

@end
