.class public abstract Lcom/android/settings/gestures/GesturePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "GesturePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;


# static fields
.field static final KEY_VIDEO_PAUSED:Ljava/lang/String; = "key_video_paused"


# instance fields
.field mVideoPaused:Z

.field private mVideoPreference:Lcom/android/settings/widget/VideoPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected canHandleClicks()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/gestures/GesturePreferenceController;->getVideoPrefKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/VideoPreference;

    iput-object p1, p0, Lcom/android/settings/gestures/GesturePreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    :cond_0
    return-void
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/core/TogglePreferenceController;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f12070d

    goto :goto_0

    :cond_0
    const p0, 0x7f12070c

    .line 69
    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method protected abstract getVideoPrefKey()Ljava/lang/String;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "key_video_paused"

    .line 76
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/gestures/GesturePreferenceController;->mVideoPaused:Z

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Lcom/android/settings/widget/VideoPreference;->isVideoPaused()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/gestures/GesturePreferenceController;->mVideoPaused:Z

    .line 89
    iget-object p0, p0, Lcom/android/settings/gestures/GesturePreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    invoke-virtual {p0}, Lcom/android/settings/widget/VideoPreference;->onViewInvisible()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    if-eqz v0, :cond_0

    .line 96
    iget-boolean p0, p0, Lcom/android/settings/gestures/GesturePreferenceController;->mVideoPaused:Z

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/VideoPreference;->onViewVisible(Z)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 82
    iget-boolean p0, p0, Lcom/android/settings/gestures/GesturePreferenceController;->mVideoPaused:Z

    const-string v0, "key_video_paused"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/gestures/GesturePreferenceController;->canHandleClicks()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method
