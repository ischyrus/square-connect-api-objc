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





@protocol SQSearchTeamMembersFilter
@end

@interface SQSearchTeamMembersFilter : SQObject

/* When present, filters by team members assigned to the specified locations. When empty, includes team members assigned to any location. [optional]
 */
@property(nonatomic) NSArray<NSString*>* locationIds;
/* When present, filters by team members who match the given status. When empty, includes team members of all statuses. [optional]
 */
@property(nonatomic) NSString* status;
/* When present and set to true, returns the team member who is the owner of the Square account. [optional]
 */
@property(nonatomic) NSNumber* isOwner;

@end
