.class public Lcom/android/settings/network/PrivateDnsModeDialogPreference;
.super Lcom/android/settingslib/CustomDialogPreferenceCompat;
.source "PrivateDnsModeDialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/text/TextWatcher;


# static fields
.field static final HOSTNAME_KEY:Ljava/lang/String; = "private_dns_specifier"

.field static final MODE_KEY:Ljava/lang/String; = "private_dns_mode"

.field private static final PRIVATE_DNS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mEditText:Landroid/widget/EditText;

.field mMode:Ljava/lang/String;

.field mRadioGroup:Landroid/widget/RadioGroup;

.field private final mUrlLinkInfo:Lcom/android/settings/utils/AnnotationSpan$LinkInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->PRIVATE_DNS_MAP:Ljava/util/Map;

    .line 75
    sget-object v0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->PRIVATE_DNS_MAP:Ljava/util/Map;

    const v1, 0x7f0a034b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "off"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->PRIVATE_DNS_MAP:Ljava/util/Map;

    const v1, 0x7f0a034c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "opportunistic"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->PRIVATE_DNS_MAP:Ljava/util/Map;

    const v1, 0x7f0a034d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hostname"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 105
    invoke-direct {p0, p1}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;)V

    .line 125
    new-instance p1, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    sget-object v0, Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$I1bK8FTmQSNCc-qXqZ0usMONEsU;->INSTANCE:Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$I1bK8FTmQSNCc-qXqZ0usMONEsU;

    const-string v1, "url"

    invoke-direct {p1, v1, v0}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mUrlLinkInfo:Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    .line 106
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    new-instance p1, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    sget-object p2, Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$I1bK8FTmQSNCc-qXqZ0usMONEsU;->INSTANCE:Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$I1bK8FTmQSNCc-qXqZ0usMONEsU;

    const-string v0, "url"

    invoke-direct {p1, v0, p2}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mUrlLinkInfo:Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    .line 111
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 125
    new-instance p1, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    sget-object p2, Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$I1bK8FTmQSNCc-qXqZ0usMONEsU;->INSTANCE:Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$I1bK8FTmQSNCc-qXqZ0usMONEsU;

    const-string p3, "url"

    invoke-direct {p1, p3, p2}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mUrlLinkInfo:Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    .line 116
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 125
    new-instance p1, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    sget-object p2, Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$I1bK8FTmQSNCc-qXqZ0usMONEsU;->INSTANCE:Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$I1bK8FTmQSNCc-qXqZ0usMONEsU;

    const-string p3, "url"

    invoke-direct {p1, p3, p2}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mUrlLinkInfo:Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    .line 122
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->initialize()V

    return-void
.end method

.method private getEnforcedAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 2

    .line 252
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "disallow_config_private_dns"

    .line 251
    invoke-static {p0, v1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    return-object p0
.end method

.method public static getHostnameFromSettings(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1

    const-string v0, "private_dns_specifier"

    .line 94
    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getModeFromSettings(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2

    const-string v0, "private_dns_mode"

    .line 86
    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    sget-object v1, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->PRIVATE_DNS_MAP:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "private_dns_default_mode"

    .line 88
    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    :cond_0
    sget-object p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->PRIVATE_DNS_MAP:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "opportunistic"

    :goto_0
    return-object v0
.end method

.method private getSaveButton()Landroid/widget/Button;
    .locals 1

    .line 260
    invoke-virtual {p0}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/AlertDialog;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, -0x1

    .line 264
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method private initialize()V
    .locals 1

    const v0, 0x7f0d016f

    .line 143
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method private isDisabledByAdmin()Z
    .locals 0

    .line 256
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->getEnforcedAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$new$0(Landroid/view/View;)V
    .locals 3

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120753

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 133
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity was not found for intent, "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PrivateDnsModeDialog"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private updateDialogInfo()V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:Ljava/lang/String;

    const-string v1, "hostname"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 269
    iget-object v1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 270
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 272
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->getSaveButton()Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 275
    iget-object p0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/NetworkUtils;->isWeaklyValidatedHostname(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    .line 274
    :goto_0
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 234
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->updateDialogInfo()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4

    .line 166
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 169
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->getModeFromSettings(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:Ljava/lang/String;

    const v2, 0x7f0a034e

    .line 171
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mEditText:Landroid/widget/EditText;

    .line 172
    iget-object v2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 173
    iget-object v2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mEditText:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->getHostnameFromSettings(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a034f

    .line 175
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 176
    iget-object v1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 177
    iget-object v1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mRadioGroup:Landroid/widget/RadioGroup;

    sget-object v2, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->PRIVATE_DNS_MAP:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:Ljava/lang/String;

    const v3, 0x7f0a034c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/RadioGroup;->check(I)V

    const p0, 0x7f0a034a

    .line 179
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 180
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const p1, 0x7f120753

    .line 182
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 183
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-static {v0, p1, v1}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 184
    new-instance v1, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const-string v2, "url"

    invoke-direct {v1, v0, v2, p1}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 186
    invoke-virtual {v1}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->isActionable()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f120ba8

    .line 188
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 187
    invoke-static {p1, v0}, Lcom/android/settings/utils/AnnotationSpan;->linkify(Ljava/lang/CharSequence;[Lcom/android/settings/utils/AnnotationSpan$LinkInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 148
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 149
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    const v0, 0x7f0a0382

    .line 156
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 160
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->isDisabledByAdmin()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "hostname"

    .line 218
    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string p1, "opportunistic"

    .line 215
    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const-string p1, "off"

    .line 212
    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:Ljava/lang/String;

    .line 221
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->updateDialogInfo()V

    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a034b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 195
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 196
    iget-object p2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:Ljava/lang/String;

    const-string v0, "hostname"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mEditText:Landroid/widget/EditText;

    .line 199
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "private_dns_specifier"

    .line 198
    invoke-static {p2, v1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 202
    :cond_0
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p2

    const/16 v0, 0x4e1

    iget-object v1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:Ljava/lang/String;

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:Ljava/lang/String;

    const-string p2, "private_dns_mode"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public performClick()V
    .locals 1

    .line 239
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->getEnforcedAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-nez v0, :cond_0

    .line 243
    invoke-super {p0}, Landroidx/preference/Preference;->performClick()V

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :goto_0
    return-void
.end method
