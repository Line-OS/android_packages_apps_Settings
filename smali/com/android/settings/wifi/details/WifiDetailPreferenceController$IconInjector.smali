.class Lcom/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;
.super Ljava/lang/Object;
.source "WifiDetailPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/details/WifiDetailPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IconInjector"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 955
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 956
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 960
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/Utils;->getWifiIconResource(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
