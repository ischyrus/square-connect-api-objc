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





@protocol SQPhase
@end

@interface SQPhase : SQObject

/* id of subscription phase [optional]
 */
@property(nonatomic) NSString* uid;
/* index of phase in total subscription plan [optional]
 */
@property(nonatomic) NSNumber* ordinal;
/* id of order to be used in billing [optional]
 */
@property(nonatomic) NSString* orderTemplateId;
/* the uid from the plan's phase in catalog [optional]
 */
@property(nonatomic) NSString* planPhaseUid;

@end
