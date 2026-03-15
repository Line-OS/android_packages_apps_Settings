.class Lcom/android/settings/location/LocationFooterPreferenceController$FooterData;
.super Ljava/lang/Object;
.source "LocationFooterPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/LocationFooterPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FooterData"
.end annotation


# instance fields
.field final applicationInfo:Landroid/content/pm/ApplicationInfo;

.field final componentName:Landroid/content/ComponentName;

.field final footerStringRes:I


# direct methods
.method constructor <init>(ILandroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;)V
    .locals 0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput p1, p0, Lcom/android/settings/location/LocationFooterPreferenceController$FooterData;->footerStringRes:I

    .line 216
    iput-object p2, p0, Lcom/android/settings/location/LocationFooterPreferenceController$FooterData;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 217
    iput-object p3, p0, Lcom/android/settings/location/LocationFooterPreferenceController$FooterData;->componentName:Landroid/content/ComponentName;

    return-void
.end method
