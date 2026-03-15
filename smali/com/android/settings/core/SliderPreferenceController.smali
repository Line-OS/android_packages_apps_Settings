.class public abstract Lcom/android/settings/core/SliderPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SliderPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract getMax()I
.end method

.method public abstract getMin()I
.end method

.method public getSliceType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public abstract getSliderPosition()I
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 32
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SliderPreferenceController;->setSliderPosition(I)Z

    move-result p0

    return p0
.end method

.method public abstract setSliderPosition(I)Z
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 37
    instance-of v0, p1, Lcom/android/settings/widget/SeekBarPreference;

    if-eqz v0, :cond_0

    .line 38
    check-cast p1, Lcom/android/settings/widget/SeekBarPreference;

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/core/SliderPreferenceController;->getSliderPosition()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    goto :goto_0

    .line 40
    :cond_0
    instance-of v0, p1, Landroidx/preference/SeekBarPreference;

    if-eqz v0, :cond_1

    .line 41
    check-cast p1, Landroidx/preference/SeekBarPreference;

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/core/SliderPreferenceController;->getSliderPosition()I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/SeekBarPreference;->setValue(I)V

    :cond_1
    :goto_0
    return-void
.end method
