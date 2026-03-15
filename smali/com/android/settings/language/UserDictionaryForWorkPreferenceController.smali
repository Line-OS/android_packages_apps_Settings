.class public final Lcom/android/settings/language/UserDictionaryForWorkPreferenceController;
.super Lcom/android/settings/core/WorkProfilePreferenceController;
.source "UserDictionaryForWorkPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/WorkProfilePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 46
    sget-boolean v0, Landroid/view/inputmethod/InputMethodSystemProperty;->PER_PROFILE_IME_ENABLED:Z

    if-nez v0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 49
    :cond_0
    invoke-super {p0}, Lcom/android/settings/core/WorkProfilePreferenceController;->getAvailabilityStatus()I

    move-result p0

    return p0
.end method

.method protected getSourceMetricsCategory()I
    .locals 0

    const/16 p0, 0x2ee

    return p0
.end method
