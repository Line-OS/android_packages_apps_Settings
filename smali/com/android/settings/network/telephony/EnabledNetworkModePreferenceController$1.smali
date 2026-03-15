.class Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$1;
.super Landroid/database/ContentObserver;
.source "EnabledNetworkModePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$1;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$1;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->access$000(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 67
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$1;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-static {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->access$000(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
