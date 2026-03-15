.class public final Lcom/android/settings/inputmethod/SpellCheckerForWorkPreferenceController;
.super Lcom/android/settings/core/WorkProfilePreferenceController;
.source "SpellCheckerForWorkPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/WorkProfilePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/view/inputmethod/InputMethodSystemProperty;->PER_PROFILE_IME_ENABLED:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    invoke-super {p0}, Lcom/android/settings/core/WorkProfilePreferenceController;->getAvailabilityStatus()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x3

    return p0
.end method

.method protected getSourceMetricsCategory()I
    .locals 0

    const/16 p0, 0x2ee

    return p0
.end method
