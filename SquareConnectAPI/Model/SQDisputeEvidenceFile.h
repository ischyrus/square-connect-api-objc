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





@protocol SQDisputeEvidenceFile
@end

@interface SQDisputeEvidenceFile : SQObject

/* The file name including the file extension. For example: \"receipt.tiff\". [optional]
 */
@property(nonatomic) NSString* filename;
/* Dispute evidence files must be application/pdf, image/heic, image/heif, image/jpeg, image/png, or image/tiff formats. [optional]
 */
@property(nonatomic) NSString* filetype;

@end
