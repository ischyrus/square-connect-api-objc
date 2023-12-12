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


#import "SQTeamMember.h"
@protocol SQTeamMember;
@class SQTeamMember;



@protocol SQUpdateTeamMemberRequest
@end

@interface SQUpdateTeamMemberRequest : SQObject

/* The data used to update the `TeamMember` object. [optional]
 */
@property(nonatomic) SQTeamMember* teamMember;

@end