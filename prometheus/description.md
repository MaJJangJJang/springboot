# Spring Boot + Prometheus Monitoring

1. Frame만들기
* [start.spring.io](start.sping.io) 에서 진행  
  
2. 필요한 의존성 추가하기
* Spring Web, Prometheus, Spring Boot Actuator
![start.spring.io 화면](../png/prometheus/springboot_create.png)

3. ./src/main/resources/application.yml
* 코드수정  
```
  spring:
  application:
    name: monitoring

management:
  endpoint:
    metrics:
      enabled: true
    prometheus:
      enabled: true
  
  endpoints:
    web:
      exposure:
        include: health, info, metrics, prometheus
    
    metrics:
      tags:
        application: ${spring.application.name}
```