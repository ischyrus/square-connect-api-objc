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


#import "SQMoney.h"
@protocol SQMoney;
@class SQMoney;



@protocol SQTeamMemberWage
@end

@interface SQTeamMemberWage : SQObject

/* The UUID for this object. [optional]
 */
@property(nonatomic) NSString* _id;
/* The `TeamMember` that this wage is assigned to. [optional]
 */
@property(nonatomic) NSString* teamMemberId;
/* The job title that this wage relates to. [optional]
 */
@property(nonatomic) NSString* title;
/* Can be a custom-set hourly wage or the calculated effective hourly wage based on the annual wage and hours worked per week. [optional]
 */
@property(nonatomic) SQMoney* hourlyRate;
/* An identifier for the job that this wage relates to. This cannot be used to retrieve the job. [optional]
 */
@property(nonatomic) NSString* jobId;

@end
