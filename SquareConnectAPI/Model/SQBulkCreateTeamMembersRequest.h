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


#import "SQCreateTeamMemberRequest.h"
@protocol SQCreateTeamMemberRequest;
@class SQCreateTeamMemberRequest;



@protocol SQBulkCreateTeamMembersRequest
@end

@interface SQBulkCreateTeamMembersRequest : SQObject

/* The data used to create the `TeamMember` objects. Each key is the `idempotency_key` that maps to the `CreateTeamMemberRequest`. The maximum number of create objects is 25. 
 */
@property(nonatomic) NSDictionary<SQCreateTeamMemberRequest>* teamMembers;

@end
