.class public Lcom/android/settings/accounts/CrossProfileCalendarDisabledPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "CrossProfileCalendarDisabledPreferenceController.java"


# instance fields
.field private mManagedUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/android/settings/accounts/CrossProfileCalendarDisabledPreferenceController;->mManagedUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 40
    invoke-static {p0, v0}, Lcom/android/settings/accounts/CrossProfileCalendarPreferenceController;->isCrossProfileCalendarDisallowedByAdmin(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x4

    return p0
.end method

.method public setManagedUser(Landroid/os/UserHandle;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/android/settings/accounts/CrossProfileCalendarDisabledPreferenceController;->mManagedUser:Landroid/os/UserHandle;

    return-void
.end method
