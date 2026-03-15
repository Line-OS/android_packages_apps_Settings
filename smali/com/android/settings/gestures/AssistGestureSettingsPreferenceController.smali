.class public Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;
.super Lcom/android/settings/gestures/GesturePreferenceController;
.source "AssistGestureSettingsPreferenceController.java"


# static fields
.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1

.field private static final PREF_KEY_VIDEO:Ljava/lang/String; = "gesture_assist_video"

.field private static final SECURE_KEY_ASSIST:Ljava/lang/String; = "assist_gesture_enabled"

.field private static final SECURE_KEY_SILENCE:Ljava/lang/String; = "assist_gesture_silence_alerts_enabled"


# instance fields
.field mAssistOnly:Z

.field private final mFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

.field private mPreference:Landroidx/preference/Preference;

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private mWasAvailable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/settings/gestures/GesturePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getAssistGestureFeatureProvider()Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mWasAvailable:Z

    return-void
.end method

.method private isAssistGestureEnabled()Z
    .locals 2

    .line 100
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "assist_gesture_enabled"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSilenceGestureEnabled()Z
    .locals 2

    .line 105
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "assist_gesture_silence_alerts_enabled"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updatePreference()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 65
    iput-object p1, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/gestures/GesturePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mAssistOnly:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/android/settings/gestures/AssistGestureFeatureProvider;->isSupported(Landroid/content/Context;)Z

    move-result p0

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/android/settings/gestures/AssistGestureFeatureProvider;->isSensorAvailable(Landroid/content/Context;)Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const/4 p0, 0x3

    :goto_1
    return p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 4

    .line 122
    invoke-direct {p0}, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->isAssistGestureEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v3}, Lcom/android/settings/gestures/AssistGestureFeatureProvider;->isSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 123
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mAssistOnly:Z

    if-nez v3, :cond_3

    if-nez v0, :cond_2

    .line 124
    invoke-direct {p0}, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->isSilenceGestureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v1

    .line 126
    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    const v0, 0x7f12070d

    goto :goto_3

    :cond_4
    const v0, 0x7f12070c

    :goto_3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method protected getVideoPrefKey()Ljava/lang/String;
    .locals 0

    const-string p0, "gesture_assist_video"

    return-object p0
.end method

.method public isChecked()Z
    .locals 2

    .line 132
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "assist_gesture_enabled"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public onResume()V
    .locals 2

    .line 72
    iget-boolean v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mWasAvailable:Z

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->updatePreference()V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mWasAvailable:Z

    :cond_0
    return-void
.end method

.method public setAssistOnly(Z)Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mAssistOnly:Z

    return-object p0
.end method

.method public setChecked(Z)Z
    .locals 1

    .line 111
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "assist_gesture_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
