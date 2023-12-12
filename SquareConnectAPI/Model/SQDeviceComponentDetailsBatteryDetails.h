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


#import "SQExternalPower.h"
@protocol SQExternalPower;
@class SQExternalPower;



@protocol SQDeviceComponentDetailsBatteryDetails
@end

@interface SQDeviceComponentDetailsBatteryDetails : SQObject

/* The battery charge percentage as displayed on the device. [optional]
 */
@property(nonatomic) NSNumber* visiblePercent;
/* The status of external_power. [optional]
 */
@property(nonatomic) SQExternalPower* externalPower;

@end
