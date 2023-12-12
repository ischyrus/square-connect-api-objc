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


#import "SQError.h"
#import "SQTeamMemberWage.h"
@protocol SQError;
@class SQError;
@protocol SQTeamMemberWage;
@class SQTeamMemberWage;



@protocol SQGetTeamMemberWageResponse
@end

@interface SQGetTeamMemberWageResponse : SQObject

/* The requested `TeamMemberWage` object. [optional]
 */
@property(nonatomic) SQTeamMemberWage* teamMemberWage;
/* Any errors that occurred during the request. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;

@end
