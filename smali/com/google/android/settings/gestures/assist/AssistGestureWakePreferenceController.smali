.class public Lcom/google/android/settings/gestures/assist/AssistGestureWakePreferenceController;
.super Lcom/android/settings/gestures/GesturePreferenceController;
.source "AssistGestureWakePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/settings/gestures/assist/AssistGestureWakePreferenceController$SettingObserver;
    }
.end annotation


# static fields
.field private static final PREF_KEY_VIDEO:Ljava/lang/String; = "gesture_assist_video"


# instance fields
.field private final mFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

.field private mHandler:Landroid/os/Handler;

.field private mPreference:Landroidx/preference/SwitchPreference;

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private final mSettingObserver:Lcom/google/android/settings/gestures/assist/AssistGestureWakePreferenceController$SettingObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/gestures/GesturePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getAssistGestureFeatureProvider()Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/gestures/assist/AssistGestureWakePreferenceController;->mFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    .line 41
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/settings/gestures/assist/AssistGestureWakePreferenceController;->mHandler:Landroid/os/Handler;

    .line 42
    new-instance p1, Lcom/google/android/settings/gestures/assist/AssistGestureWakePreferenceController$SettingObserver;

    invoke-direct {p1, p0}, Lcom/google/android/settings/gestures/assist/AssistGestureWakePreferenceController$SettingObserver;-><init>(Lcom/google/android/settings/gestures/assist/AssistGestureWakePreferenceController;)V

    iput-object p1, p0, Lcom/google/android/settings/gestures/assist/AssistGestureWakePreferenceController;->mSettingObserver:Lcom/google/android/settings/gestures/assist/AssistGestureWakePreferenceController$SettingObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/settings/gestures/assist/AssistGestureWakePreferenceController;)Landroid/os/Handler;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureWakePreferenceController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/settings/gestures/assist/AssistGestureWakePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/settings/gestures/assist/AssistGestureWakePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/settings/gestures/assist/AssistGestureWakePreferenceController;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureWakePreferenceController;->updatePreference()V

    return-void
.end method

.method private updatePreference()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureWakePreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureWakePreferenceController;->mFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/settings/gestures/AssistGestureFeatureProvider;->isSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureWakePreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureWakePreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/google/android/settings/gestures/assist/AssistGestureWakePreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureWakePreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureWakePreferenceController;->canHandleClicks()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureWakePreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureWakePreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method


# virtual methods
.method protected canHandleClicks()Z
    .locals 2

    .line 102
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "assist_gesture_enabled"

    .line 102
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 57
    iput-object p1, p0, Lcom/google/android/settings/gestures/assist/AssistGestureWakePreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureWakePreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    .line 61
    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureWakePreferenceController;->mFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/settings/gestures/AssistGestureFeatureProvider;->isSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object p1, p0, Lcom/google/android/settings/gestures/assist/AssistGestureWakePreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureWakePreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    .line 67
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/gestures/GesturePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureWakePreferenceController;->mFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/android/settings/gestures/AssistGestureFeatureProvider;->isSensorAvailable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method protected getVideoPrefKey()Ljava/lang/String;
    .locals 0

    const-string p0, "gesture_assist_video"

    return-object p0
.end method

.method public isChecked()Z
    .locals 2

    .line 83
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "assist_gesture_wake_enabled"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSliceable()Z
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "gesture_assist_wake"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureWakePreferenceController;->mSettingObserver:Lcom/google/android/settings/gestures/assist/AssistGestureWakePreferenceController$SettingObserver;

    invoke-virtual {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureWakePreferenceController$SettingObserver;->unregister()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureWakePreferenceController;->mSettingObserver:Lcom/google/android/settings/gestures/assist/AssistGestureWakePreferenceController$SettingObserver;

    invoke-virtual {v0}, Lcom/google/android/settings/gestures/assist/AssistGestureWakePreferenceController$SettingObserver;->register()V

    .line 97
    invoke-direct {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureWakePreferenceController;->updatePreference()V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 1

    .line 72
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "assist_gesture_wake_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
