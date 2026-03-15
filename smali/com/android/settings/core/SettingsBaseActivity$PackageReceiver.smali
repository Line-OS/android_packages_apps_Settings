.class Lcom/android/settings/core/SettingsBaseActivity$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/core/SettingsBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/core/SettingsBaseActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/core/SettingsBaseActivity;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/android/settings/core/SettingsBaseActivity$PackageReceiver;->this$0:Lcom/android/settings/core/SettingsBaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/core/SettingsBaseActivity;Lcom/android/settings/core/SettingsBaseActivity$1;)V
    .locals 0

    .line 205
    invoke-direct {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity$PackageReceiver;-><init>(Lcom/android/settings/core/SettingsBaseActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 208
    new-instance p1, Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;

    iget-object p0, p0, Lcom/android/settings/core/SettingsBaseActivity$PackageReceiver;->this$0:Lcom/android/settings/core/SettingsBaseActivity;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;-><init>(Lcom/android/settings/core/SettingsBaseActivity;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
