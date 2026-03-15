.class Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController$PhoneCallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "Enhanced4gLtePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneCallStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;Landroid/os/Looper;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController$PhoneCallStateListener;->this$0:Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;

    .line 165
    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController$PhoneCallStateListener;->this$0:Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;

    invoke-static {p0}, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->access$000(Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public register(I)V
    .locals 1

    .line 174
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/PhoneStateListener;->mSubId:Ljava/lang/Integer;

    .line 175
    iget-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController$PhoneCallStateListener;->this$0:Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->access$100(Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    const/16 v0, 0x20

    invoke-virtual {p1, p0, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public unregister()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController$PhoneCallStateListener;->this$0:Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;

    invoke-static {v0}, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->access$100(Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method
