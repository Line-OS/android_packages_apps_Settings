.class public Lcom/android/settings/notification/VibrateWhenRingPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "VibrateWhenRingPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/VibrateWhenRingPreferenceController$SettingObserver;
    }
.end annotation


# static fields
.field private static final KEY_VIBRATE_WHEN_RINGING:Ljava/lang/String; = "vibrate_when_ringing"

.field private static final RAMPING_RINGER_ENABLED:Ljava/lang/String; = "ramping_ringer_enabled"


# instance fields
.field private final DEFAULT_VALUE:I

.field private final NOTIFICATION_VIBRATE_WHEN_RINGING:I

.field private mSettingObserver:Lcom/android/settings/notification/VibrateWhenRingPreferenceController$SettingObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lcom/android/settings/notification/VibrateWhenRingPreferenceController;->DEFAULT_VALUE:I

    const/4 p1, 0x1

    .line 46
    iput p1, p0, Lcom/android/settings/notification/VibrateWhenRingPreferenceController;->NOTIFICATION_VIBRATE_WHEN_RINGING:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/VibrateWhenRingPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private isRampingRingerEnabled()Z
    .locals 2

    const-string p0, "telephony"

    const-string v0, "ramping_ringer_enabled"

    const/4 v1, 0x0

    .line 135
    invoke-static {p0, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "vibrate_when_ringing"

    .line 83
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 85
    new-instance v0, Lcom/android/settings/notification/VibrateWhenRingPreferenceController$SettingObserver;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/VibrateWhenRingPreferenceController$SettingObserver;-><init>(Lcom/android/settings/notification/VibrateWhenRingPreferenceController;Landroidx/preference/Preference;)V

    iput-object v0, p0, Lcom/android/settings/notification/VibrateWhenRingPreferenceController;->mSettingObserver:Lcom/android/settings/notification/VibrateWhenRingPreferenceController$SettingObserver;

    const/4 p0, 0x0

    .line 86
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setPersistent(Z)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/notification/VibrateWhenRingPreferenceController;->isRampingRingerEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public isChecked()Z
    .locals 2

    .line 55
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "vibrate_when_ringing"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSliceable()Z
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "vibrate_when_ringing"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 1

    .line 99
    iget-object p0, p0, Lcom/android/settings/notification/VibrateWhenRingPreferenceController;->mSettingObserver:Lcom/android/settings/notification/VibrateWhenRingPreferenceController$SettingObserver;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/VibrateWhenRingPreferenceController$SettingObserver;->register(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 92
    iget-object p0, p0, Lcom/android/settings/notification/VibrateWhenRingPreferenceController;->mSettingObserver:Lcom/android/settings/notification/VibrateWhenRingPreferenceController$SettingObserver;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 93
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/VibrateWhenRingPreferenceController$SettingObserver;->register(Z)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)Z
    .locals 1

    .line 61
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "vibrate_when_ringing"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
