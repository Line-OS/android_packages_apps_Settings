.class public Lcom/google/android/settings/aware/AwarePreferenceCategoryController;
.super Lcom/android/settings/widget/PreferenceCategoryController;
.source "AwarePreferenceCategoryController.java"


# instance fields
.field private final mFeatureProvider:Lcom/android/settings/aware/AwareFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 15
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getAwareFeatureProvider()Lcom/android/settings/aware/AwareFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/aware/AwarePreferenceCategoryController;->mFeatureProvider:Lcom/android/settings/aware/AwareFeatureProvider;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/google/android/settings/aware/AwarePreferenceCategoryController;->mFeatureProvider:Lcom/android/settings/aware/AwareFeatureProvider;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/android/settings/aware/AwareFeatureProvider;->isSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method
