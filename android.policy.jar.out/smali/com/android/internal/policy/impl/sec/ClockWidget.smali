.class public Lcom/android/internal/policy/impl/sec/ClockWidget;
.super Landroid/widget/LinearLayout;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;,
        Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;,
        Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;,
        Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;
    }
.end annotation


# static fields
.field public static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "ClockWidget"

.field private static mClockCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private static mContext:Landroid/content/Context;

.field private static mIsEasyUxOn:Z

.field private static mOwnerInfo:Landroid/widget/TextView;

.field private static mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# instance fields
.field private mCharger:Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;

.field private mClock:Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;

.field private mCreationOrientation:I

.field private mEmergencyCall:Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;

.field private mRoot:Landroid/widget/LinearLayout;

.field private mStartMarquee:Ljava/lang/Runnable;

.field private mWeather:Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mIsEasyUxOn:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 7
    .parameter "context"
    .parameter "updateMonitor"
    .parameter "configuration"
    .parameter "callback"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 87
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 89
    sput-object p1, Lcom/android/internal/policy/impl/sec/ClockWidget;->mContext:Landroid/content/Context;

    .line 90
    sput-object p2, Lcom/android/internal/policy/impl/sec/ClockWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 91
    iget v3, p3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mCreationOrientation:I

    .line 92
    sput-object p4, Lcom/android/internal/policy/impl/sec/ClockWidget;->mClockCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "easy_mode_switch"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_2

    move v3, v4

    :goto_0
    sput-boolean v3, Lcom/android/internal/policy/impl/sec/ClockWidget;->mIsEasyUxOn:Z

    .line 98
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/ClockWidget;->mIsEasyUxOn:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/internal/policy/impl/sec/ClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x111004e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v5

    :goto_1
    sput-boolean v3, Lcom/android/internal/policy/impl/sec/ClockWidget;->mIsEasyUxOn:Z

    .line 100
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 101
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mCreationOrientation:I

    const/4 v6, 0x2

    if-eq v3, v6, :cond_5

    .line 103
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/ClockWidget;->mIsEasyUxOn:Z

    if-eqz v3, :cond_4

    .line 104
    const v3, 0x1090055

    invoke-virtual {v0, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 118
    :goto_2
    const v3, 0x10202c6

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sec/ClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mRoot:Landroid/widget/LinearLayout;

    .line 119
    const v3, 0x10202c7

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sec/ClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mEmergencyCall:Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;

    .line 120
    const v3, 0x10202c9

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sec/ClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mClock:Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;

    .line 121
    const v3, 0x10202e6

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sec/ClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mWeather:Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;

    .line 122
    const v3, 0x10202ee

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sec/ClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mCharger:Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;

    .line 123
    const v3, 0x10202f2

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sec/ClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sput-object v3, Lcom/android/internal/policy/impl/sec/ClockWidget;->mOwnerInfo:Landroid/widget/TextView;

    .line 126
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isPLMNEnable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 127
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mEmergencyCall:Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->setVisibility(I)V

    .line 131
    :cond_0
    sget-object v3, Lcom/android/internal/policy/impl/sec/ClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "lock_screen_owner_info_enabled"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_7

    move v2, v5

    .line 133
    .local v2, ownerInfoEnabled:Z
    :goto_3
    if-eqz v2, :cond_1

    sget-object v3, Lcom/android/internal/policy/impl/sec/ClockWidget;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 134
    sget-object v3, Lcom/android/internal/policy/impl/sec/ClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "lock_screen_owner_info"

    invoke-static {v3, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, ownerInfo:Ljava/lang/String;
    sget-object v3, Lcom/android/internal/policy/impl/sec/ClockWidget;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    sget-object v3, Lcom/android/internal/policy/impl/sec/ClockWidget;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    .end local v1           #ownerInfo:Ljava/lang/String;
    :cond_1
    new-instance v3, Lcom/android/internal/policy/impl/sec/ClockWidget$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$1;-><init>(Lcom/android/internal/policy/impl/sec/ClockWidget;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mStartMarquee:Ljava/lang/Runnable;

    .line 146
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mStartMarquee:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sec/ClockWidget;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 147
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mStartMarquee:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/internal/policy/impl/sec/ClockWidget;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 148
    return-void

    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #ownerInfoEnabled:Z
    :cond_2
    move v3, v5

    .line 97
    goto/16 :goto_0

    :cond_3
    move v3, v4

    .line 98
    goto/16 :goto_1

    .line 106
    .restart local v0       #inflater:Landroid/view/LayoutInflater;
    :cond_4
    const v3, 0x1090054

    invoke-virtual {v0, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_2

    .line 110
    :cond_5
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/ClockWidget;->mIsEasyUxOn:Z

    if-eqz v3, :cond_6

    .line 111
    const v3, 0x1090056

    invoke-virtual {v0, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_2

    .line 113
    :cond_6
    const v3, 0x1090057

    invoke-virtual {v0, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_2

    :cond_7
    move v2, v4

    .line 131
    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sec/ClockWidget;)Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mClock:Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;

    return-object v0
.end method

.method static synthetic access$1600()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$1800()Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mClockCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sec/ClockWidget;)Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mCharger:Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;

    return-object v0
.end method

.method static synthetic access$2100()Z
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/android/internal/policy/impl/sec/ClockWidget;->isEmergencyCallCapable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mOwnerInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/sec/ClockWidget;)Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mWeather:Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;

    return-object v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 65
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mIsEasyUxOn:Z

    return v0
.end method

.method private static isEmergencyCallCapable()Z
    .locals 2

    .prologue
    .line 1703
    sget-object v0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1704
    sget-object v0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1707
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mClockCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 187
    return-void
.end method

.method public getRootLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mRoot:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getTTSMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 224
    const-string v0, ""

    .line 226
    .local v0, TTSMessage:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mWeather:Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->getTTSMessage()Ljava/lang/String;

    move-result-object v0

    .line 228
    const-string v1, "ClockWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TTS Message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 179
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mClock:Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;

    #calls: Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->setMarquee(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->access$100(Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;Z)V

    .line 180
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mCharger:Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;

    #calls: Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->setMarquee(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->access$300(Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;Z)V

    .line 181
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mWeather:Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;

    #calls: Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->setMarquee(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->access$500(Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;Z)V

    .line 182
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mEmergencyCall:Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->updateText()V

    .line 1698
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mClock:Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->chooseClockType()V

    .line 1699
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mClock:Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->refreshTime()V

    .line 1700
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget;->setBatteryInfo()V

    .line 155
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mClock:Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mClock:Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->onResume()V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mWeather:Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->updateWeatherInfo()V

    .line 161
    new-instance v0, Lcom/android/internal/policy/impl/sec/ClockWidget$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$2;-><init>(Lcom/android/internal/policy/impl/sec/ClockWidget;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mStartMarquee:Ljava/lang/Runnable;

    .line 169
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mStartMarquee:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mStartMarquee:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/sec/ClockWidget;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 171
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isUSAFeature()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSprintDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mCharger:Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->refreshCMASInfo()V

    .line 174
    :cond_2
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 1
    .parameter "simState"

    .prologue
    .line 1691
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mEmergencyCall:Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->updateText()V

    .line 1692
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mClock:Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->chooseClockType()V

    .line 1693
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mClock:Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->refreshTime()V

    .line 1694
    return-void
.end method

.method public refreshBatteryInfo(ZZI)V
    .locals 1
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mCharger:Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->refreshBatteryInfo(ZZI)V

    .line 199
    return-void
.end method

.method public setBatteryInfo()V
    .locals 4

    .prologue
    .line 206
    sget-object v3, Lcom/android/internal/policy/impl/sec/ClockWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v2

    .line 207
    .local v2, showBatteryInfo:Z
    sget-object v3, Lcom/android/internal/policy/impl/sec/ClockWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v1

    .line 208
    .local v1, pluggedIn:Z
    sget-object v3, Lcom/android/internal/policy/impl/sec/ClockWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    .line 211
    .local v0, batteryLevel:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget;->mCharger:Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;

    invoke-virtual {v3, v2, v1, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->refreshBatteryInfo(ZZI)V

    .line 212
    return-void
.end method
