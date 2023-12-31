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


#import "SQTeamMemberAssignedLocations.h"
@protocol SQTeamMemberAssignedLocations;
@class SQTeamMemberAssignedLocations;



@protocol SQTeamMember
@end

@interface SQTeamMember : SQObject

/* The unique ID for the team member. [optional]
 */
@property(nonatomic) NSString* _id;
/* A second ID used to associate the team member with an entity in another system. [optional]
 */
@property(nonatomic) NSString* referenceId;
/* Whether the team member is the owner of the Square account. [optional]
 */
@property(nonatomic) NSNumber* isOwner;
/* Describes the status of the team member. [optional]
 */
@property(nonatomic) NSString* status;
/* The given name (that is, the first name) associated with the team member. [optional]
 */
@property(nonatomic) NSString* givenName;
/* The family name (that is, the last name) associated with the team member. [optional]
 */
@property(nonatomic) NSString* familyName;
/* The email address associated with the team member. [optional]
 */
@property(nonatomic) NSString* emailAddress;
/* The team member's phone number, in E.164 format. For example: +14155552671 - the country code is 1 for US +551155256325 - the country code is 55 for BR [optional]
 */
@property(nonatomic) NSString* phoneNumber;
/* The timestamp, in RFC 3339 format, describing when the team member was created. For example, \"2018-10-04T04:00:00-07:00\" or \"2019-02-05T12:00:00Z\". [optional]
 */
@property(nonatomic) NSString* createdAt;
/* The timestamp, in RFC 3339 format, describing when the team member was last updated. For example, \"2018-10-04T04:00:00-07:00\" or \"2019-02-05T12:00:00Z\". [optional]
 */
@property(nonatomic) NSString* updatedAt;
/* Describes the team member's assigned locations. [optional]
 */
@property(nonatomic) SQTeamMemberAssignedLocations* assignedLocations;

@end
