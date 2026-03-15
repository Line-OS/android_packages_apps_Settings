.class public Lcom/android/settings/network/MobileDataEnabledListener;
.super Landroid/database/ContentObserver;
.source "MobileDataEnabledListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/MobileDataEnabledListener$Client;
    }
.end annotation


# instance fields
.field private mClient:Lcom/android/settings/network/MobileDataEnabledListener$Client;

.field private mContext:Landroid/content/Context;

.field private mSubId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/network/MobileDataEnabledListener$Client;)V
    .locals 1

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 38
    iput-object p1, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mClient:Lcom/android/settings/network/MobileDataEnabledListener$Client;

    const/4 p1, -0x1

    .line 40
    iput p1, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mSubId:I

    return-void
.end method


# virtual methods
.method public getSubId()I
    .locals 0

    .line 57
    iget p0, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mSubId:I

    return p0
.end method

.method public onChange(Z)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mClient:Lcom/android/settings/network/MobileDataEnabledListener$Client;

    invoke-interface {p0}, Lcom/android/settings/network/MobileDataEnabledListener$Client;->onMobileDataEnabledChange()V

    return-void
.end method

.method public start(I)V
    .locals 2

    .line 45
    iput p1, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mSubId:I

    .line 47
    iget p1, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mSubId:I

    const-string v0, "mobile_data"

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 48
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mSubId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 52
    :goto_0
    iget-object v0, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public stop()Lcom/android/settings/network/MobileDataEnabledListener;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-object p0
.end method
