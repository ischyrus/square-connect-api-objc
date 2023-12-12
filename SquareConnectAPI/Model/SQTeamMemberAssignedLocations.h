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





@protocol SQTeamMemberAssignedLocations
@end

@interface SQTeamMemberAssignedLocations : SQObject

/* The current assignment type of the team member. [optional]
 */
@property(nonatomic) NSString* assignmentType;
/* The explicit locations that the team member is assigned to. [optional]
 */
@property(nonatomic) NSArray<NSString*>* locationIds;

@end