
# Postmortem: Data Loss Due to Backend Failure
**Our backend😂😂**


<img src="litlle baby.jpg" alt="">

**Duration⌛:** The outage occurred on August 18th, 2024, starting at 10:00AM(GMT+1) and lasted for 4 hours, ending at 2:00PM(GMT+1)

**Impact👀:** The backend failure resulted in the unavailability of our core service, affecting 25% of our users. Users experienced slow response times and data loss during the outage.

## Root Cause:🤔
The root cause of the issue was a critical failure in the storage subsystem of our backend servers. Specifically, a disk controller malfunctioned due to a firmware bug, leading to a cascade failure in the entire storage array.🙆‍♀️

<img src="Shocking baby.jpg" alt="">

## Timeline:⌚

* 10:00 AM (GMT+1): The issue was detected through monitoring alerts indicating an increase in latency and error rates in our backend services.

* 10:15 AM (GMT+1): The incident response team was notified, and they immediately initiated an investigation.

* 10:30 AM (GMT+1): Initial assumptions were made that the issue might be related to increased traffic or a misconfiguration.

* 11:00 AM (GMT+1): The investigation led to the realization that the issue was more complex than initially thought, as errors were being reported in the storage subsystem.

* 11:30 AM (GMT+1): Further debugging paths were explored, including examining database queries, but no conclusive evidence of the root cause was found.

* 12:00 PM (GMT+1): The incident was escalated to the infrastructure team and senior engineers as the problem was identified to be severe, affecting a significant portion of our user base.

* 01:00 PM (GMT+1): After thorough analysis and vendor support, the root cause was identified as a disk controller firmware bug causing a catastrophic storage array failure.

* 02:00 PM (GMT+1): The issue was resolved after replacing the malfunctioning disk controller and performing data recovery.


## Root Cause and Resolution:🧑‍💻
**Root Cause:** The issue was caused by a firmware bug in the disk controller, which led to a cascading failure in the storage array, making data temporarily unavailable.

**Resolution:💚😌** The malfunctioning disk controller was replaced, and data recovery was performed to restore lost data. Firmware updates were applied to prevent similar issues in the future.

## Corrective and Preventative Measures:✅

## Corrective Measures:✅📏

- Regular Maintenance: Implement a proactive schedule for firmware updates and regular maintenance of hardware components.

- Automated Monitoring: Enhance automated monitoring for disk controller health and storage subsystems to detect issues before they lead to data loss.

* Data Backup: Establish a robust and frequent data backup strategy to minimize data loss in case of future failures.

## Preventative Measures:👌

* Vendor Communication: Maintain open communication with hardware vendors to stay informed about potential firmware updates and known issues.

* Redundancy: Implement redundancy at the hardware and software levels to ensure data availability even in the event of hardware failures.

* Testing: Conduct thorough testing and validation of firmware updates in a non-production environment before applying them in the live system.

