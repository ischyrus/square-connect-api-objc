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


#import "SQMeasurementUnit.h"
@protocol SQMeasurementUnit;
@class SQMeasurementUnit;



@protocol SQStandardUnitDescription
@end

@interface SQStandardUnitDescription : SQObject

/* Identifies the measurement unit being described. [optional]
 */
@property(nonatomic) SQMeasurementUnit* unit;
/* UI display name of the measurement unit. For example, 'Pound'. [optional]
 */
@property(nonatomic) NSString* name;
/* UI display abbreviation for the measurement unit. For example, 'lb'. [optional]
 */
@property(nonatomic) NSString* abbreviation;

@end