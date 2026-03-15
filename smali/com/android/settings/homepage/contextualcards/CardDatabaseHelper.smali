.class public Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CardDatabaseHelper.java"


# static fields
.field static sCardDatabaseHelper:Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "homepage_cards.db"

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 172
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;
    .locals 2

    const-class v0, Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;

    monitor-enter v0

    .line 193
    :try_start_0
    sget-object v1, Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;->sCardDatabaseHelper:Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;

    if-nez v1, :cond_0

    .line 194
    new-instance v1, Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;->sCardDatabaseHelper:Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;

    .line 196
    :cond_0
    sget-object p0, Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;->sCardDatabaseHelper:Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method getContextualCards()Landroid/database/Cursor;
    .locals 8

    .line 200
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "cards"

    const/4 v2, 0x0

    const-string v3, "card_dismissed=0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "score DESC"

    .line 202
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public markContextualCardAsDismissed(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4

    .line 216
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 217
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    .line 218
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "card_dismissed"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "cards"

    const-string v2, "name=?"

    .line 221
    invoke-virtual {p0, p2, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    .line 222
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/android/settings/homepage/contextualcards/CardContentProvider;->DELETE_CARD_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return p2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "CREATE TABLE cards(name TEXT NOT NULL PRIMARY KEY, type INTEGER NOT NULL, score DOUBLE NOT NULL, slice_uri TEXT, category INTEGER DEFAULT 0, localized_to_locale TEXT, package_name TEXT NOT NULL, app_version INTEGER NOT NULL, title_res_name TEXT, title_text TEXT, summary_res_name TEXT, summary_text TEXT, icon_res_name TEXT, icon_res_id INTEGER DEFAULT 0, card_action INTEGER, expire_time_ms INTEGER, support_half_width INTEGER DEFAULT 0, card_dismissed INTEGER DEFAULT 0 );"

    .line 177
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    if-ge p2, p3, :cond_0

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reconstructing DB from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CardDatabaseHelper"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "DROP TABLE IF EXISTS cards"

    .line 184
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method
