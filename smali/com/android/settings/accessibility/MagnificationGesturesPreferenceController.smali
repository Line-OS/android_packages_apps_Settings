.class public Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "MagnificationGesturesPreferenceController.java"


# instance fields
.field private mIsFromSUW:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->mIsFromSUW:Z

    return-void
.end method

.method static populateMagnificationGesturesPreferenceExtras(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 1

    const-string p1, "preference_key"

    const-string v0, "accessibility_display_magnification_enabled"

    .line 86
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "title_res"

    const v0, 0x7f12005d

    .line 88
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "summary_res"

    const v0, 0x7f120064

    .line 90
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "video_resource"

    const v0, 0x7f110001

    .line 92
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->mIsFromSUW:Z

    if-eqz v0, :cond_0

    const v0, 0x7f120062

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f120046

    goto :goto_0

    :cond_1
    const v0, 0x7f120045

    .line 82
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 54
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->populateMagnificationGesturesPreferenceExtras(Landroid/os/Bundle;Landroid/content/Context;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->isChecked()Z

    move-result v0

    const-string v1, "checked"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 56
    iget-boolean p0, p0, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->mIsFromSUW:Z

    const-string v0, "from_suw"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isChecked()Z
    .locals 1

    .line 36
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accessibility_display_magnification_enabled"

    invoke-static {p0, v0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->isChecked(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSliceable()Z
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "screen_magnification_gestures_preference_screen"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 1

    .line 42
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accessibility_display_magnification_enabled"

    invoke-static {p0, v0, p1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->setChecked(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public setIsFromSUW(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->mIsFromSUW:Z

    return-void
.end method
