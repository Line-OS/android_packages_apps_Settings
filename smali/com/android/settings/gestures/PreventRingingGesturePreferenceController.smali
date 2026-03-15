.class public Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "PreventRingingGesturePreferenceController.java"

# interfaces
.implements Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;
    }
.end annotation


# static fields
.field static final KEY_MUTE:Ljava/lang/String; = "prevent_ringing_option_mute"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_VIBRATE:Ljava/lang/String; = "prevent_ringing_option_vibrate"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final KEY:Ljava/lang/String;

.field private final KEY_VIDEO_PAUSED:Ljava/lang/String;

.field private final PREF_KEY_VIDEO:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field mMutePref:Lcom/android/settings/widget/RadioButtonPreference;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mPreferenceCategory:Landroidx/preference/PreferenceCategory;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mSettingObserver:Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;

.field mVibratePref:Lcom/android/settings/widget/RadioButtonPreference;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mVideoPaused:Z

.field private mVideoPreference:Lcom/android/settings/widget/VideoPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 72
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const-string v0, "key_video_paused"

    .line 54
    iput-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->KEY_VIDEO_PAUSED:Ljava/lang/String;

    const-string v0, "gesture_prevent_ringing_video"

    .line 55
    iput-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->PREF_KEY_VIDEO:Ljava/lang/String;

    const-string v0, "gesture_prevent_ringing_category"

    .line 56
    iput-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->KEY:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    .line 76
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private keyToSetting(Ljava/lang/String;)I
    .locals 3

    .line 181
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v0, 0x385badaf

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v0, :cond_1

    const v0, 0x3b606a19

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "prevent_ringing_option_vibrate"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move p0, v2

    goto :goto_1

    :cond_1
    const-string p0, "prevent_ringing_option_mute"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move p0, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_4

    if-eq p0, v2, :cond_3

    return v1

    :cond_3
    return v2

    :cond_4
    const/4 p0, 0x2

    return p0
.end method

.method private makeRadioPreference(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;
    .locals 2

    .line 192
    new-instance v0, Lcom/android/settings/widget/RadioButtonPreference;

    iget-object v1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 193
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 195
    invoke-virtual {v0, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    .line 196
    iget-object p0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 82
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const v0, 0x7f120b85

    const-string v1, "prevent_ringing_option_vibrate"

    .line 87
    invoke-direct {p0, v1, v0}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->makeRadioPreference(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mVibratePref:Lcom/android/settings/widget/RadioButtonPreference;

    const v0, 0x7f120b81

    const-string v1, "prevent_ringing_option_mute"

    .line 88
    invoke-direct {p0, v1, v0}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->makeRadioPreference(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mMutePref:Lcom/android/settings/widget/RadioButtonPreference;

    .line 90
    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_1

    .line 91
    new-instance v1, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;-><init>(Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;Landroidx/preference/Preference;)V

    iput-object v1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mSettingObserver:Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->getVideoPrefKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/VideoPreference;

    iput-object p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "gesture_prevent_ringing_category"

    return-object p0
.end method

.method public getVideoPrefKey()Ljava/lang/String;
    .locals 0

    const-string p0, "gesture_prevent_ringing_video"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 99
    iget-object p0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x11100f4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "key_video_paused"

    .line 152
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mVideoPaused:Z

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mSettingObserver:Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {v0}, Lcom/android/settings/widget/VideoPreference;->isVideoPaused()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mVideoPaused:Z

    .line 176
    iget-object p0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    invoke-virtual {p0}, Lcom/android/settings/widget/VideoPreference;->onViewInvisible()V

    :cond_1
    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 3

    .line 119
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->keyToSetting(Ljava/lang/String;)I

    move-result p1

    .line 120
    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "volume_hush_gesture"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 122
    iget-object p0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mSettingObserver:Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 159
    iget-object v1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;)V

    .line 160
    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mSettingObserver:Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;->onChange(ZLandroid/net/Uri;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    if-eqz v0, :cond_1

    .line 164
    iget-boolean p0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mVideoPaused:Z

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/VideoPreference;->onViewVisible(Z)V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 114
    iget-boolean p0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mVideoPaused:Z

    const-string v0, "key_video_paused"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    .line 129
    iget-object p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "volume_hush_gesture"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    .line 133
    :goto_1
    iget-object v4, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mVibratePref:Lcom/android/settings/widget/RadioButtonPreference;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eq v4, v2, :cond_2

    .line 134
    iget-object v4, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mVibratePref:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v4, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 136
    :cond_2
    iget-object v2, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mMutePref:Lcom/android/settings/widget/RadioButtonPreference;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eq v2, v3, :cond_3

    .line 137
    iget-object v2, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mMutePref:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v2, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_3
    if-nez p1, :cond_4

    .line 141
    iget-object p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mVibratePref:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 142
    iget-object p0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mMutePref:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 144
    :cond_4
    iget-object p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mVibratePref:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 145
    iget-object p0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mMutePref:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_2
    return-void
.end method
