.class public Lcom/android/internal/policy/impl/sec/CircleUnlockView;
.super Landroid/widget/FrameLayout;
.source "CircleUnlockView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/CircleUnlockView$SineEaseInOut;,
        Lcom/android/internal/policy/impl/sec/CircleUnlockView$QuintEaseInOut;,
        Lcom/android/internal/policy/impl/sec/CircleUnlockView$QuintEaseOut;,
        Lcom/android/internal/policy/impl/sec/CircleUnlockView$CubicEaseInOut;
    }
.end annotation


# static fields
.field private static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x2710

.field private static final MAX_AWAKE_TIME:I = 0x7530

.field public static final MISSED_EVENT:I = 0x0

.field public static final NORMAL_EVENT:I = -0x1


# instance fields
.field private final ARR0W_FADE_IN_OFFSET:I

.field private final ARR0W_FADE_OUT_OFFSET:I

.field private final ARROW_FADE_IN_DURATION:I

.field private final ARROW_FADE_OUT_DURATION:I

.field private final CIRCLE_CENTER_DOWN_DURATION:I

.field private final CIRCLE_CENTER_UP_DURATION:I

.field private final CIRCLE_LOOP_DURATION:I

.field private final CIRCLE_MAX_ALPHA:I

.field private final CIRCLE_OUT_DURATION:I

.field private final FIRST_MOVE_DURATION:I

.field private final INIT_ANGLE_CIRCLE_1:I

.field private final INIT_ANGLE_CIRCLE_2:I

.field private final INIT_ANGLE_CIRCLE_3:I

.field private final LOOP_HANDLER_WHAT:I

.field private final MISSED_DRAG_DISATANCE:F

.field private MISSED_UNLOCK_RELEASE_MARGIN:I

.field private final SHORT_TAP_FIRST_DURATION:I

.field private final SHORT_TAP_FIRST_STARTOFF:I

.field private final SHORT_TAP_SECOND_DURATION:I

.field private final SHORT_TAP_SECOND_STARTOFF:I

.field protected TAG:Ljava/lang/String;

.field protected final UNLOCK_DRAG_THRESHOLD:D

.field protected final UNLOCK_RELEASE_THRESHOLD:D

.field private arrow:Landroid/widget/ImageView;

.field private arrowContainer:Landroid/widget/LinearLayout;

.field private arrowFadeIn:Landroid/view/animation/AlphaAnimation;

.field private arrowFadeOut:Landroid/view/animation/AlphaAnimation;

.field private arrowFadeSet:Landroid/view/animation/AnimationSet;

.field private circleAlphaIn1:Landroid/animation/ObjectAnimator;

.field private circleAlphaIn2:Landroid/animation/ObjectAnimator;

.field private circleAlphaIn3:Landroid/animation/ObjectAnimator;

.field private circleAlphaOut1:Landroid/animation/ObjectAnimator;

.field private circleAlphaOut2:Landroid/animation/ObjectAnimator;

.field private circleAlphaOut3:Landroid/animation/ObjectAnimator;

.field private circleSet1:Landroid/animation/AnimatorSet;

.field private circleSet2:Landroid/animation/AnimatorSet;

.field private circleSet3:Landroid/animation/AnimatorSet;

.field private circleUpSet:Landroid/animation/AnimatorSet;

.field private circle_1:Landroid/widget/ImageView;

.field private circle_2:Landroid/widget/ImageView;

.field private circle_3:Landroid/widget/ImageView;

.field private firstMoveSet:Landroid/animation/AnimatorSet;

.field private isIgnoreTouch:Z

.field protected lpFrame:Landroid/widget/FrameLayout$LayoutParams;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCircleCenter:Landroid/widget/ImageView;

.field private mCircleCenterAlphaAnimDown:Landroid/view/animation/AlphaAnimation;

.field private mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;

.field private mCircleInPress:Landroid/widget/ImageView;

.field protected mCircleMain:Landroid/widget/FrameLayout;

.field protected mCircleRoot:Landroid/widget/RelativeLayout;

.field private final mContext:Landroid/content/Context;

.field private mDistanceRatio:D

.field private mDownFirst:Z

.field private mHandlerForRepeat:Landroid/os/Handler;

.field private mIsFirst:Z

.field private mOnCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

.field private mOnCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

.field private mResumedTimeMillis:J

.field private mStartLocation:I

.field private mTouchDownX:F

.field mWindowHeight:I

.field mWindowWidth:I

.field protected mX:F

.field protected mY:F

.field private originalCircleX:F

.field private originalCircleY:F

.field private radian:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 10
    .parameter "context"
    .parameter "callback"

    .prologue
    const/16 v9, 0x12c

    const/16 v8, 0x10b

    const-wide v4, 0x3fe19999a0000000L

    const/16 v7, 0x320

    const/4 v6, 0x0

    .line 137
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    const-string v2, "CircleLockScreen"

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->TAG:Ljava/lang/String;

    .line 50
    const/16 v2, 0xff

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->CIRCLE_MAX_ALPHA:I

    .line 52
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isTMODevice()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isCanadaFeature()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move-wide v2, v4

    :goto_0
    iput-wide v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->UNLOCK_RELEASE_THRESHOLD:D

    .line 53
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isTMODevice()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isCanadaFeature()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    :goto_1
    iput-wide v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->UNLOCK_DRAG_THRESHOLD:D

    .line 60
    iput v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->ARROW_FADE_IN_DURATION:I

    .line 61
    iput v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->ARROW_FADE_OUT_DURATION:I

    .line 62
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->ARR0W_FADE_IN_OFFSET:I

    .line 63
    iput v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->ARR0W_FADE_OUT_OFFSET:I

    .line 65
    const/16 v2, 0x52

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->INIT_ANGLE_CIRCLE_1:I

    .line 66
    const/16 v2, 0x139

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->INIT_ANGLE_CIRCLE_2:I

    .line 67
    const/16 v2, 0x41

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->INIT_ANGLE_CIRCLE_3:I

    .line 69
    iput v8, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->CIRCLE_CENTER_DOWN_DURATION:I

    .line 70
    iput v8, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->CIRCLE_CENTER_UP_DURATION:I

    .line 72
    const/16 v2, 0xc8

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->SHORT_TAP_FIRST_DURATION:I

    .line 73
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->SHORT_TAP_FIRST_STARTOFF:I

    .line 74
    iput v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->SHORT_TAP_SECOND_DURATION:I

    .line 75
    const/16 v2, 0x258

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->SHORT_TAP_SECOND_STARTOFF:I

    .line 77
    const/16 v2, 0x514

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->CIRCLE_LOOP_DURATION:I

    .line 78
    iput v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->CIRCLE_OUT_DURATION:I

    .line 79
    const/16 v2, 0x258

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->FIRST_MOVE_DURATION:I

    .line 80
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->LOOP_HANDLER_WHAT:I

    .line 117
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mIsFirst:Z

    .line 118
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDownFirst:Z

    .line 119
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->isIgnoreTouch:Z

    .line 124
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mResumedTimeMillis:J

    .line 129
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mStartLocation:I

    .line 132
    const/16 v2, 0x3c

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->MISSED_UNLOCK_RELEASE_MARGIN:I

    .line 134
    const/high16 v2, 0x4270

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->MISSED_DRAG_DISATANCE:F

    .line 138
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mContext:Landroid/content/Context;

    .line 139
    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 141
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->setLayout()V

    .line 142
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->setHandler()V

    .line 143
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->setAnimation()V

    .line 145
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 146
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 147
    .local v1, mWindowManager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 148
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mWindowWidth:I

    .line 149
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mWindowHeight:I

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mResumedTimeMillis:J

    .line 152
    return-void

    .line 52
    .end local v0           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v1           #mWindowManager:Landroid/view/WindowManager;
    :cond_2
    const-wide v2, 0x3fe99999a0000000L

    goto/16 :goto_0

    .line 53
    :cond_3
    const-wide v4, 0x3ff4ccccc0000000L

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sec/CircleUnlockView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->startCircleAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/sec/CircleUnlockView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sec/CircleUnlockView;)Landroid/view/animation/AnimationSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method private addToCircleMain()V
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleInPress:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->lpFrame:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->lpFrame:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->lpFrame:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->lpFrame:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->lpFrame:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->lpFrame:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    return-void
.end method

.method private createArrow()V
    .locals 2

    .prologue
    .line 199
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrow:Landroid/widget/ImageView;

    .line 200
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrow:Landroid/widget/ImageView;

    const v1, 0x1080489

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 201
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 203
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowContainer:Landroid/widget/LinearLayout;

    .line 204
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 205
    return-void
.end method

.method private createArrowAnimation()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const-wide/16 v3, 0x320

    .line 284
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeIn:Landroid/view/animation/AlphaAnimation;

    .line 285
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 286
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeIn:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 288
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeOut:Landroid/view/animation/AlphaAnimation;

    .line 289
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 290
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 292
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    .line 293
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 294
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 296
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView$2;-><init>(Lcom/android/internal/policy/impl/sec/CircleUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 311
    return-void
.end method

.method private createCircleAnimation()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x12c

    const-wide/16 v9, 0xc8

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn1:Landroid/animation/ObjectAnimator;

    .line 243
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn1:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 244
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn1:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 245
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut1:Landroid/animation/ObjectAnimator;

    .line 246
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut1:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 247
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut1:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 249
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet1:Landroid/animation/AnimatorSet;

    .line 250
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet1:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn1:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut1:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 252
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn2:Landroid/animation/ObjectAnimator;

    .line 253
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 254
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn2:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 255
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut2:Landroid/animation/ObjectAnimator;

    .line 256
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 257
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut2:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 259
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet2:Landroid/animation/AnimatorSet;

    .line 260
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet2:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn2:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut2:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 261
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet2:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v9, v10}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 263
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn3:Landroid/animation/ObjectAnimator;

    .line 264
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn3:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 265
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn3:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 266
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut3:Landroid/animation/ObjectAnimator;

    .line 267
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut3:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 268
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut3:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 270
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet3:Landroid/animation/AnimatorSet;

    .line 271
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet3:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn3:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut3:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 272
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet3:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 274
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleUpSet:Landroid/animation/AnimatorSet;

    .line 275
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleUpSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    const-string v3, "alpha"

    new-array v4, v8, [F

    const/4 v5, 0x0

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x190

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    const-string v3, "alpha"

    new-array v4, v8, [F

    const/4 v5, 0x0

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    const-string v3, "alpha"

    new-array v4, v8, [F

    const/4 v5, 0x0

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 280
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleUpSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView$QuintEaseOut;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView$QuintEaseOut;-><init>(Lcom/android/internal/policy/impl/sec/CircleUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 281
    return-void

    .line 242
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 245
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 252
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 255
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 263
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 266
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private createCircleCenter()V
    .locals 2

    .prologue
    .line 194
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    const v1, 0x108048c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    return-void
.end method

.method private createCircleCenterAnimation()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x10b

    const/4 v3, 0x1

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 232
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenterAlphaAnimDown:Landroid/view/animation/AlphaAnimation;

    .line 233
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenterAlphaAnimDown:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 234
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenterAlphaAnimDown:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 236
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;

    .line 237
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 238
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 239
    return-void
.end method

.method private createInnerCircle()V
    .locals 2

    .prologue
    .line 177
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleInPress:Landroid/widget/ImageView;

    .line 178
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleInPress:Landroid/widget/ImageView;

    const v1, 0x108048a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 179
    return-void
.end method

.method private createThreeCircles()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 182
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    .line 183
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    const v1, 0x1080405

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    .line 185
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    const v1, 0x1080406

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 186
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    .line 187
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    const v1, 0x1080407

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 189
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 190
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 191
    return-void
.end method

.method private getUnlockscreenLockImageIdAt(D)I
    .locals 4
    .parameter "value"

    .prologue
    .line 671
    const/16 v2, 0x1c

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 682
    .local v1, unlockscreen_lock_drawables:[I
    const-wide v2, 0x3fb999999999999aL

    cmpg-double v2, p1, v2

    if-gez v2, :cond_0

    .line 683
    const/4 v0, 0x0

    .line 689
    .local v0, index:I
    :goto_0
    aget v2, v1, v0

    return v2

    .line 684
    .end local v0           #index:I
    :cond_0
    const-wide/high16 v2, 0x3ff0

    cmpl-double v2, p1, v2

    if-ltz v2, :cond_1

    .line 685
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .restart local v0       #index:I
    goto :goto_0

    .line 687
    .end local v0           #index:I
    :cond_1
    array-length v2, v1

    int-to-double v2, v2

    mul-double/2addr v2, p1

    double-to-int v2, v2

    add-int/lit8 v0, v2, -0x1

    .restart local v0       #index:I
    goto :goto_0

    .line 671
    nop

    :array_0
    .array-data 0x4
        0x8ct 0x4t 0x8t 0x1t
        0x8dt 0x4t 0x8t 0x1t
        0x8et 0x4t 0x8t 0x1t
        0x8ft 0x4t 0x8t 0x1t
        0x90t 0x4t 0x8t 0x1t
        0x91t 0x4t 0x8t 0x1t
        0x92t 0x4t 0x8t 0x1t
        0x93t 0x4t 0x8t 0x1t
        0x94t 0x4t 0x8t 0x1t
        0x95t 0x4t 0x8t 0x1t
        0x96t 0x4t 0x8t 0x1t
        0x97t 0x4t 0x8t 0x1t
        0x98t 0x4t 0x8t 0x1t
        0x99t 0x4t 0x8t 0x1t
        0x9at 0x4t 0x8t 0x1t
        0x9bt 0x4t 0x8t 0x1t
        0x9ct 0x4t 0x8t 0x1t
        0x9dt 0x4t 0x8t 0x1t
        0x9et 0x4t 0x8t 0x1t
        0x9ft 0x4t 0x8t 0x1t
        0xa0t 0x4t 0x8t 0x1t
        0xa1t 0x4t 0x8t 0x1t
        0xa2t 0x4t 0x8t 0x1t
        0xa3t 0x4t 0x8t 0x1t
        0xa4t 0x4t 0x8t 0x1t
        0xa5t 0x4t 0x8t 0x1t
        0xa6t 0x4t 0x8t 0x1t
        0xa7t 0x4t 0x8t 0x1t
    .end array-data
.end method

.method private pokeWakelockWithTimeCheck()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x7530

    const-wide/16 v7, 0x4e20

    .line 634
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 635
    .local v2, now:J
    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mResumedTimeMillis:J

    sub-long v0, v2, v4

    .line 636
    .local v0, diff:J
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pokeWakelockWithTimeCheck time diffence = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    cmp-long v4, v0, v7

    if-gtz v4, :cond_0

    .line 639
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v5, 0x2710

    invoke-interface {v4, v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 640
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->TAG:Ljava/lang/String;

    const-string v5, "pokeWakelockWithTimeCheck mCallback.pokeWakelock(AWAKE_INTERVAL_DEFAULT_MS)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :goto_0
    return-void

    .line 641
    :cond_0
    cmp-long v4, v0, v7

    if-lez v4, :cond_1

    cmp-long v4, v0, v9

    if-gez v4, :cond_1

    .line 642
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    long-to-int v5, v0

    rsub-int v5, v5, 0x7530

    invoke-interface {v4, v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 643
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pokeWakelockWithTimeCheck mCallback.pokeWakelock("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v9, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 646
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->TAG:Ljava/lang/String;

    const-string v5, "pokeWakelockWithTimeCheck do nothing"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setAnimation()V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->createCircleCenterAnimation()V

    .line 227
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->createCircleAnimation()V

    .line 228
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->createArrowAnimation()V

    .line 229
    return-void
.end method

.method private setHandler()V
    .locals 1

    .prologue
    .line 217
    new-instance v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView$1;-><init>(Lcom/android/internal/policy/impl/sec/CircleUnlockView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mHandlerForRepeat:Landroid/os/Handler;

    .line 223
    return-void
.end method

.method private setInnerCircle(Landroid/view/View;D)V
    .locals 3
    .parameter "v"
    .parameter "value"

    .prologue
    .line 338
    const-wide v1, 0x406fe00000000000L

    mul-double/2addr v1, p2

    double-to-int v0, v1

    .line 339
    .local v0, alpha:I
    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 340
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleInPress:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 341
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 342
    return-void

    .line 339
    :cond_0
    rsub-int v0, v0, 0xff

    goto :goto_0
.end method

.method private startCircleAnimation()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 693
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 694
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 695
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 696
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 697
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 698
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 700
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet1:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 701
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet2:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 702
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet3:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 704
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mHandlerForRepeat:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x514

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 706
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    .prologue
    .line 789
    return-void
.end method

.method public clearCircleAnimation()V
    .locals 2

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn1:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 710
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut1:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 711
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 712
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 713
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn3:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 714
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut3:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 716
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet1:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 717
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet2:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 718
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet3:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 719
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleUpSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 721
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mHandlerForRepeat:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 723
    return-void
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 40
    .parameter "view"
    .parameter "event"

    .prologue
    .line 361
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->isIgnoreTouch:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1

    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    .line 363
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->isIgnoreTouch:Z

    .line 365
    :cond_0
    const/16 v32, 0x0

    .line 627
    :goto_0
    return v32

    .line 371
    :cond_1
    const/16 v32, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v28

    .line 372
    .local v28, touchedEventX:F
    const/16 v32, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v29

    .line 373
    .local v29, touchedEventY:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v27

    .line 376
    .local v27, touchedEventRawX:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    if-nez v32, :cond_2

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->TAG:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v33, "Occured Divided by zero Exception caused by mCircleMain-Null"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/16 v32, 0x0

    goto :goto_0

    .line 381
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v32

    if-nez v32, :cond_3

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->TAG:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v33, "Occured Divided by zero Exception caused by mCircleMain.getHeight() == 0"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/16 v32, 0x0

    goto :goto_0

    .line 385
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v32

    if-nez v32, :cond_4

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->TAG:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v33, "Occured Divided by zero Exception caused by mCircleMain.getWidth() == 0"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/16 v32, 0x0

    goto :goto_0

    .line 391
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v32

    packed-switch v32, :pswitch_data_0

    .line 627
    :cond_5
    :goto_1
    :pswitch_0
    const/16 v32, 0x1

    goto :goto_0

    .line 395
    :pswitch_1
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mTouchDownX:F

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleInPress:Landroid/widget/ImageView;

    move-object/from16 v32, v0

    const/16 v33, 0xff

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrow:Landroid/widget/ImageView;

    move-object/from16 v32, v0

    const/16 v33, 0xff

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 400
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mIsFirst:Z

    .line 401
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDownFirst:Z

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

    move-object/from16 v32, v0

    if-eqz v32, :cond_6

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;->onCircleTouchDown(Landroid/view/View;)V

    .line 409
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->pokeWakelockWithTimeCheck()V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenterAlphaAnimDown:Landroid/view/animation/AlphaAnimation;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 418
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mX:F

    .line 419
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mY:F

    .line 421
    if-eqz p1, :cond_7

    .line 422
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->originalCircleX:F

    move/from16 v32, v0

    sub-float v32, v32, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v33

    div-int/lit8 v33, v33, 0x2

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    sub-float v32, v32, v33

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v33

    div-int/lit8 v33, v33, 0x2

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v30, v0

    .line 425
    .local v30, xOffset:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->originalCircleY:F

    move/from16 v32, v0

    sub-float v32, v32, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v33

    div-int/lit8 v33, v33, 0x2

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    sub-float v32, v32, v33

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v33

    div-int/lit8 v33, v33, 0x2

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v31, v0

    .line 436
    .local v31, yOffset:I
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->setCenterImage(Landroid/view/View;)V

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/RelativeLayout$LayoutParams;

    .line 441
    .local v17, lp:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v33

    sub-int v32, v32, v33

    sub-int v21, v32, v30

    .line 443
    .local v21, rightMargin:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v33

    sub-int v32, v32, v33

    sub-int v8, v32, v31

    .line 445
    .local v8, bottomMargin:I
    move/from16 v0, v30

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 446
    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 447
    move/from16 v0, v31

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 448
    move-object/from16 v0, v17

    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowContainer:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 452
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->startCircleAnimation()V

    goto/16 :goto_1

    .line 429
    .end local v8           #bottomMargin:I
    .end local v17           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v21           #rightMargin:I
    .end local v30           #xOffset:I
    .end local v31           #yOffset:I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->originalCircleX:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v33

    div-int/lit8 v33, v33, 0x2

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    sub-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v30, v0

    .line 431
    .restart local v30       #xOffset:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->originalCircleY:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v33

    div-int/lit8 v33, v33, 0x2

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    sub-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v31, v0

    .restart local v31       #yOffset:I
    goto/16 :goto_2

    .line 458
    .end local v30           #xOffset:I
    .end local v31           #yOffset:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

    move-object/from16 v32, v0

    if-eqz v32, :cond_8

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;->onCircleTouchMove(Landroid/view/View;)V

    .line 463
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->pokeWakelockWithTimeCheck()V

    .line 467
    const/4 v10, 0x0

    .line 468
    .local v10, diffX:I
    const/4 v11, 0x0

    .line 469
    .local v11, diffY:I
    if-eqz p1, :cond_a

    .line 472
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v32

    div-int/lit8 v18, v32, 0x2

    .line 473
    .local v18, mCircleCenterX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v32

    div-int/lit8 v19, v32, 0x2

    .line 474
    .local v19, mCircleCenterY:I
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v32, v28, v32

    move/from16 v0, v32

    float-to-int v10, v0

    .line 475
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v32, v29, v32

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v33

    mul-int v32, v32, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v33

    div-int v11, v32, v33

    .line 485
    .end local v18           #mCircleCenterX:I
    .end local v19           #mCircleCenterY:I
    :goto_3
    int-to-double v0, v10

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x4000

    invoke-static/range {v32 .. v35}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v32

    int-to-double v0, v11

    move-wide/from16 v34, v0

    const-wide/high16 v36, 0x4000

    invoke-static/range {v34 .. v37}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v34

    add-double v14, v32, v34

    .line 486
    .local v14, distance_square:D
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    .line 487
    .local v12, distance:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v20

    .line 490
    .local v20, min:I
    :goto_4
    div-int/lit8 v32, v20, 0x2

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v25, v0

    .line 491
    .local v25, threshold:D
    div-double v32, v12, v25

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDistanceRatio:D

    .line 496
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->setCenterImage(Landroid/view/View;D)V

    .line 497
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->setInnerCircle(Landroid/view/View;D)V

    .line 499
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v32, v0

    const-wide v34, 0x3fc999999999999aL

    cmpg-double v32, v32, v34

    if-gez v32, :cond_c

    .line 500
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDownFirst:Z

    .line 548
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->UNLOCK_DRAG_THRESHOLD:D

    move-wide/from16 v34, v0

    cmpl-double v32, v32, v34

    if-ltz v32, :cond_5

    .line 549
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mIsFirst:Z

    move/from16 v32, v0

    if-eqz v32, :cond_5

    .line 550
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mIsFirst:Z

    .line 551
    if-nez p1, :cond_12

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto/16 :goto_1

    .line 480
    .end local v12           #distance:D
    .end local v14           #distance_square:D
    .end local v20           #min:I
    .end local v25           #threshold:D
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mX:F

    move/from16 v32, v0

    sub-float v32, v28, v32

    move/from16 v0, v32

    float-to-int v10, v0

    .line 481
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mY:F

    move/from16 v32, v0

    sub-float v32, v29, v32

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v33

    mul-int v32, v32, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v33

    div-int v11, v32, v33

    goto/16 :goto_3

    .line 487
    .restart local v12       #distance:D
    .restart local v14       #distance_square:D
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v20

    goto/16 :goto_4

    .line 502
    .restart local v20       #min:I
    .restart local v25       #threshold:D
    :cond_c
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v32, v0

    const-wide v34, 0x3fc999999999999aL

    cmpl-double v32, v32, v34

    if-lez v32, :cond_11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->UNLOCK_DRAG_THRESHOLD:D

    move-wide/from16 v34, v0

    cmpg-double v32, v32, v34

    if-gez v32, :cond_11

    .line 504
    int-to-double v4, v10

    .line 505
    .local v4, absX:D
    mul-int/lit8 v32, v11, -0x1

    move/from16 v0, v32

    int-to-double v6, v0

    .line 506
    .local v6, absY:D
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->radian:D

    .line 507
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->radian:D

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    neg-double v0, v0

    move-wide/from16 v32, v0

    const-wide v34, 0x400921fb54442d18L

    div-double v32, v32, v34

    const-wide v34, 0x4066800000000000L

    mul-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x42b4

    add-float v9, v32, v33

    .line 508
    .local v9, degree:F
    const/high16 v32, 0x42a4

    sub-float v22, v9, v32

    .line 509
    .local v22, targetDegree1:F
    const v32, 0x439c8000

    sub-float v23, v9, v32

    .line 510
    .local v23, targetDegree2:F
    const/high16 v32, 0x4282

    sub-float v24, v9, v32

    .line 512
    .local v24, targetDegree3:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDownFirst:Z

    move/from16 v32, v0

    if-eqz v32, :cond_10

    .line 513
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDownFirst:Z

    .line 515
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->clearCircleAnimation()V

    .line 517
    const/16 v32, 0x0

    cmpg-float v32, v22, v32

    if-gez v32, :cond_d

    .line 518
    const/high16 v32, 0x43b4

    add-float v22, v22, v32

    .line 519
    :cond_d
    const/16 v32, 0x0

    cmpg-float v32, v23, v32

    if-gez v32, :cond_e

    .line 520
    const/high16 v32, 0x43b4

    add-float v23, v23, v32

    .line 521
    :cond_e
    const/16 v32, 0x0

    cmpg-float v32, v24, v32

    if-gez v32, :cond_f

    .line 522
    const/high16 v32, 0x43b4

    add-float v24, v24, v32

    .line 524
    :cond_f
    new-instance v32, Landroid/animation/AnimatorSet;

    invoke-direct/range {v32 .. v32}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v32, v0

    const/16 v33, 0x6

    move/from16 v0, v33

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    move-object/from16 v35, v0

    const-string v36, "alpha"

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [F

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const v39, 0x3e99999a

    aput v39, v37, v38

    invoke-static/range {v35 .. v37}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    move-object/from16 v35, v0

    const-string v36, "rotation"

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [F

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aput v22, v37, v38

    invoke-static/range {v35 .. v37}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    move-object/from16 v35, v0

    const-string v36, "alpha"

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [F

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/high16 v39, 0x3f00

    aput v39, v37, v38

    invoke-static/range {v35 .. v37}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    move-object/from16 v35, v0

    const-string v36, "rotation"

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [F

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aput v23, v37, v38

    invoke-static/range {v35 .. v37}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    move-object/from16 v35, v0

    const-string v36, "alpha"

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [F

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const v39, 0x3f333333

    aput v39, v37, v38

    invoke-static/range {v35 .. v37}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    move-object/from16 v35, v0

    const-string v36, "rotation"

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [F

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aput v24, v37, v38

    invoke-static/range {v35 .. v37}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-virtual/range {v32 .. v33}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v32, v0

    const-wide/16 v33, 0x258

    invoke-virtual/range {v32 .. v34}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v32, v0

    new-instance v33, Lcom/android/internal/policy/impl/sec/CircleUnlockView$CubicEaseInOut;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockView$CubicEaseInOut;-><init>(Lcom/android/internal/policy/impl/sec/CircleUnlockView;)V

    invoke-virtual/range {v32 .. v33}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/animation/AnimatorSet;->start()V

    .line 538
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v32, v0

    if-eqz v32, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v32

    if-nez v32, :cond_9

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    goto/16 :goto_5

    .line 544
    .end local v4           #absX:D
    .end local v6           #absY:D
    .end local v9           #degree:F
    .end local v22           #targetDegree1:F
    .end local v23           #targetDegree2:F
    .end local v24           #targetDegree3:F
    :cond_11
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->UNLOCK_DRAG_THRESHOLD:D

    move-wide/from16 v34, v0

    cmpl-double v32, v32, v34

    if-ltz v32, :cond_9

    .line 545
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDownFirst:Z

    goto/16 :goto_5

    .line 557
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    move-object/from16 v32, v0

    if-eqz v32, :cond_5

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;->onCircleUnlocked(Landroid/view/View;)V

    goto/16 :goto_1

    .line 566
    .end local v10           #diffX:I
    .end local v11           #diffY:I
    .end local v12           #distance:D
    .end local v14           #distance_square:D
    .end local v20           #min:I
    .end local v25           #threshold:D
    :pswitch_3
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->isIgnoreTouch:Z

    .line 572
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleInPress:Landroid/widget/ImageView;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrow:Landroid/widget/ImageView;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowContainer:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 577
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->clearCircleAnimation()V

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleUpSet:Landroid/animation/AnimatorSet;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/animation/AnimatorSet;->start()V

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

    move-object/from16 v32, v0

    if-eqz v32, :cond_13

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;->onCircleTouchUp(Landroid/view/View;)V

    .line 586
    :cond_13
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->UNLOCK_RELEASE_THRESHOLD:D

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v34, v0

    cmpg-double v32, v32, v34

    if-gtz v32, :cond_16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->UNLOCK_DRAG_THRESHOLD:D

    move-wide/from16 v34, v0

    cmpg-double v32, v32, v34

    if-gez v32, :cond_16

    .line 588
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mIsFirst:Z

    move/from16 v32, v0

    if-eqz v32, :cond_14

    .line 589
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mIsFirst:Z

    .line 590
    if-nez p1, :cond_15

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 623
    :cond_14
    :goto_6
    const/16 v32, -0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mStartLocation:I

    goto/16 :goto_1

    .line 596
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    move-object/from16 v32, v0

    if-eqz v32, :cond_14

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;->onCircleUnlocked(Landroid/view/View;)V

    goto :goto_6

    .line 601
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mStartLocation:I

    move/from16 v32, v0

    if-nez v32, :cond_19

    .line 602
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->MISSED_UNLOCK_RELEASE_MARGIN:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    cmpg-float v32, v27, v32

    if-ltz v32, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mWindowWidth:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->MISSED_UNLOCK_RELEASE_MARGIN:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    cmpl-float v32, v27, v32

    if-lez v32, :cond_14

    .line 603
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mIsFirst:Z

    move/from16 v32, v0

    if-eqz v32, :cond_14

    .line 604
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mIsFirst:Z

    .line 605
    if-nez p1, :cond_18

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_6

    .line 612
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mTouchDownX:F

    move/from16 v32, v0

    sub-float v32, v27, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 613
    .local v16, dx:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    move-object/from16 v32, v0

    if-eqz v32, :cond_14

    const/high16 v32, 0x4270

    cmpl-float v32, v16, v32

    if-lez v32, :cond_14

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;->onCircleUnlocked(Landroid/view/View;)V

    goto/16 :goto_6

    .line 620
    .end local v16           #dx:F
    :cond_19
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->UNLOCK_RELEASE_THRESHOLD:D

    move-wide/from16 v34, v0

    cmpg-double v32, v32, v34

    if-gez v32, :cond_14

    goto/16 :goto_6

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 347
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->originalCircleX:F

    .line 348
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->originalCircleY:F

    .line 349
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 795
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 801
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mResumedTimeMillis:J

    .line 802
    return-void
.end method

.method public setCenterImage(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 655
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->setCenterImage(Landroid/view/View;D)V

    .line 656
    return-void
.end method

.method protected setCenterImage(Landroid/view/View;D)V
    .locals 3
    .parameter "v"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 659
    if-nez p1, :cond_0

    .line 661
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->getUnlockscreenLockImageIdAt(D)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 668
    :goto_0
    return-void

    .line 664
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 665
    invoke-virtual {p1, v1}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 666
    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 667
    .local v0, bm:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setLayout()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 155
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    .line 156
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 157
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    .line 159
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v3, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 161
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v4, v4}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->addView(Landroid/view/View;II)V

    .line 164
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 166
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 167
    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->lpFrame:Landroid/widget/FrameLayout$LayoutParams;

    .line 169
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->createInnerCircle()V

    .line 170
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->createThreeCircles()V

    .line 171
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->createCircleCenter()V

    .line 172
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->createArrow()V

    .line 173
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->addToCircleMain()V

    .line 174
    return-void
.end method

.method public setOnCircleTouchListener(Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;)V
    .locals 0
    .parameter "onCircleTouchListener"

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

    .line 335
    return-void
.end method

.method public setOnCircleUnlockListener(Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;)V
    .locals 0
    .parameter "onCircleUnlockListener"

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    .line 323
    return-void
.end method

.method public setStartLocation(I)V
    .locals 0
    .parameter "startLocation"

    .prologue
    .line 805
    iput p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mStartLocation:I

    .line 806
    return-void
.end method
