#
# Copyright (c) 2012-2014 Microsoft Mobile and/or its subsidiary(-ies).
# All rights reserved.
#
# For the applicable distribution terms see the license text file included in
# the distribution.
#

INCLUDEPATH += \
    $$PWD/../include \
    $$PWD/../include/chipmunk \
    $$PWD/../include/chipmunk/constraints

contains(DEFINES,COCOS2DXQT_LIBRARY) {
!contains(DEFINES,DONT_INCLUDE_CHIPMUNK_SOURCES) {
    SOURCES += \
        $$PWD/../src/cpShape.c \
        $$PWD/../src/cpArray.c \
        $$PWD/../src/cpSpaceQuery.c \
        $$PWD/../src/chipmunk.c \
        $$PWD/../src/cpPolyShape.c \
        $$PWD/../src/cpVect.c \
        $$PWD/../src/cpBody.c \
        $$PWD/../src/cpSpaceHash.c \
        $$PWD/../src/cpBB.c \
        $$PWD/../src/cpSpaceStep.c \
        $$PWD/../src/cpSpaceComponent.c \
        $$PWD/../src/prime.h \
        $$PWD/../src/constraints/cpDampedRotarySpring.c \
        $$PWD/../src/constraints/cpDampedSpring.c \
        $$PWD/../src/constraints/cpConstraint.c \
        $$PWD/../src/constraints/cpSlideJoint.c \
        $$PWD/../src/constraints/cpRatchetJoint.c \
        $$PWD/../src/constraints/cpPivotJoint.c \
        $$PWD/../src/constraints/cpRotaryLimitJoint.c \
        $$PWD/../src/constraints/cpGearJoint.c \
        $$PWD/../src/constraints/cpGrooveJoint.c \
        $$PWD/../src/constraints/cpPinJoint.c \
        $$PWD/../src/constraints/cpSimpleMotor.c \
        $$PWD/../src/cpArbiter.c \
        $$PWD/../src/cpCollision.c \
        $$PWD/../src/cpHashSet.c \
        $$PWD/../src/cpSpace.c
}
}

HEADERS = \
    $$PWD/../include/chipmunk/cpVect.h \
    $$PWD/../include/chipmunk/cpPolyShape.h \
    $$PWD/../include/chipmunk/chipmunk_types.h \
    $$PWD/../include/chipmunk/chipmunk_ffi.h \
    $$PWD/../include/chipmunk/chipmunk.h \
    $$PWD/../include/chipmunk/cpHashSet.h \
    $$PWD/../include/chipmunk/cpBody.h \
    $$PWD/../include/chipmunk/cpArbiter.h \
    $$PWD/../include/chipmunk/chipmunk_private.h \
    $$PWD/../include/chipmunk/cpSpaceHash.h \
    $$PWD/../include/chipmunk/cpArray.h \
    $$PWD/../include/chipmunk/chipmunk_unsafe.h \
    $$PWD/../include/chipmunk/cpBB.h \
    $$PWD/../include/chipmunk/constraints/cpDampedRotarySpring.h \
    $$PWD/../include/chipmunk/constraints/cpRotaryLimitJoint.h \
    $$PWD/../include/chipmunk/constraints/cpGrooveJoint.h \
    $$PWD/../include/chipmunk/constraints/cpDampedSpring.h \
    $$PWD/../include/chipmunk/constraints/cpGearJoint.h \
    $$PWD/../include/chipmunk/constraints/cpSimpleMotor.h \
    $$PWD/../include/chipmunk/constraints/cpConstraint.h \
    $$PWD/../include/chipmunk/constraints/cpPivotJoint.h \
    $$PWD/../include/chipmunk/constraints/cpSlideJoint.h \
    $$PWD/../include/chipmunk/constraints/util.h \
    $$PWD/../include/chipmunk/constraints/cpRatchetJoint.h \
    $$PWD/../include/chipmunk/constraints/cpPinJoint.h \
    $$PWD/../include/chipmunk/cpSpace.h \
    $$PWD/../include/chipmunk/cpShape.h \
    $$PWD/../include/chipmunk/cpCollision.h

