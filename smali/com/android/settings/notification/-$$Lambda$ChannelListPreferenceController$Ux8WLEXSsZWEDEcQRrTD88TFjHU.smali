.class public final synthetic Lcom/android/settings/notification/-$$Lambda$ChannelListPreferenceController$Ux8WLEXSsZWEDEcQRrTD88TFjHU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/notification/ChannelListPreferenceController;

.field private final synthetic f$1:Landroid/app/NotificationChannelGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/ChannelListPreferenceController;Landroid/app/NotificationChannelGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/-$$Lambda$ChannelListPreferenceController$Ux8WLEXSsZWEDEcQRrTD88TFjHU;->f$0:Lcom/android/settings/notification/ChannelListPreferenceController;

    iput-object p2, p0, Lcom/android/settings/notification/-$$Lambda$ChannelListPreferenceController$Ux8WLEXSsZWEDEcQRrTD88TFjHU;->f$1:Landroid/app/NotificationChannelGroup;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/-$$Lambda$ChannelListPreferenceController$Ux8WLEXSsZWEDEcQRrTD88TFjHU;->f$0:Lcom/android/settings/notification/ChannelListPreferenceController;

    iget-object p0, p0, Lcom/android/settings/notification/-$$Lambda$ChannelListPreferenceController$Ux8WLEXSsZWEDEcQRrTD88TFjHU;->f$1:Landroid/app/NotificationChannelGroup;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/notification/ChannelListPreferenceController;->lambda$populateGroupToggle$0$ChannelListPreferenceController(Landroid/app/NotificationChannelGroup;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
