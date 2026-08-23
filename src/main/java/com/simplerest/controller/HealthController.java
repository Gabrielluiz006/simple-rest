package com.simplerest.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HealthController {

    public ResponseEntity<Object> getHealth() {
        return new ResponseEntity<>(
                new HealthResponse("200", "Service is up and running"),
                HttpStatus.OK
        );
    }

    record HealthResponse(String httpStatus, String description) {

    }

}
