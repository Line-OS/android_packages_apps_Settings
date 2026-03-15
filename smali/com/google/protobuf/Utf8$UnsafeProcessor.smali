.class final Lcom/google/protobuf/Utf8$UnsafeProcessor;
.super Lcom/google/protobuf/Utf8$Processor;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnsafeProcessor"
.end annotation


# static fields
.field private static final ARRAY_BASE_OFFSET:I

.field private static final AVAILABLE:Z

.field private static final BUFFER_ADDRESS_OFFSET:J

.field private static final UNSAFE:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 994
    invoke-static {}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    .line 995
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "address"

    .line 996
    invoke-static {v0, v1}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->fieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lcom/google/protobuf/Utf8$UnsafeProcessor;->BUFFER_ADDRESS_OFFSET:J

    .line 997
    invoke-static {}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->byteArrayBaseOffset()I

    move-result v0

    sput v0, Lcom/google/protobuf/Utf8$UnsafeProcessor;->ARRAY_BASE_OFFSET:I

    .line 1003
    sget-wide v0, Lcom/google/protobuf/Utf8$UnsafeProcessor;->BUFFER_ADDRESS_OFFSET:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget v0, Lcom/google/protobuf/Utf8$UnsafeProcessor;->ARRAY_BASE_OFFSET:I

    rem-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/protobuf/Utf8$UnsafeProcessor;->AVAILABLE:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 993
    invoke-direct {p0}, Lcom/google/protobuf/Utf8$Processor;-><init>()V

    return-void
.end method

.method static synthetic access$800(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 993
    invoke-static {p0}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->checkRequiredMethods(Ljava/lang/Class;)V

    return-void
.end method

.method private static byteArrayBaseOffset()I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()I"
        }
    .end annotation

    .line 1616
    sget-object v0, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const-class v1, [B

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    :goto_0
    return v0
.end method

.method private static checkRequiredMethods(Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Lsun/misc/Unsafe;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 1668
    const-class v2, Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "arrayBaseOffset"

    invoke-virtual {p0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    .line 1669
    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v0

    const-string v4, "getByte"

    invoke-virtual {p0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    .line 1670
    const-class v5, Ljava/lang/Object;

    aput-object v5, v2, v3

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v0

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v1

    const-string v5, "putByte"

    invoke-virtual {p0, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v2, v1, [Ljava/lang/Class;

    .line 1671
    const-class v6, Ljava/lang/Object;

    aput-object v6, v2, v3

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v0

    const-string v6, "getLong"

    invoke-virtual {p0, v6, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v2, v0, [Ljava/lang/Class;

    .line 1674
    const-class v7, Ljava/lang/reflect/Field;

    aput-object v7, v2, v3

    const-string v7, "objectFieldOffset"

    invoke-virtual {p0, v7, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v2, v0, [Ljava/lang/Class;

    .line 1675
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v2, v3

    invoke-virtual {p0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v2, v1, [Ljava/lang/Class;

    .line 1676
    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v0

    invoke-virtual {p0, v6, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Class;

    .line 1677
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    invoke-virtual {p0, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Class;

    .line 1678
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    invoke-virtual {p0, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    return-void
.end method

.method private static field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1592
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1593
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v1, 0x0

    .line 1598
    :goto_0
    invoke-static {}, Lcom/google/protobuf/Utf8;->access$700()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1599
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v5

    aput-object p1, v4, v0

    const/4 p0, 0x2

    if-eqz v1, :cond_0

    const-string p1, "available"

    goto :goto_1

    :cond_0
    const-string p1, "unavailable"

    :goto_1
    aput-object p1, v4, p0

    const-string p0, "{0}.{1}: {2}"

    .line 1598
    invoke-virtual {v2, v3, p0, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method private static fieldOffset(Ljava/lang/reflect/Field;)J
    .locals 2

    if-eqz p0, :cond_1

    .line 1608
    sget-object v0, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    :goto_1
    return-wide v0
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .locals 5

    .line 1633
    :try_start_0
    new-instance v0, Lcom/google/protobuf/Utf8$UnsafeProcessor$1;

    invoke-direct {v0}, Lcom/google/protobuf/Utf8$UnsafeProcessor$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    .line 1657
    :goto_0
    invoke-static {}, Lcom/google/protobuf/Utf8;->access$700()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    if-eqz v0, :cond_0

    const-string v3, "available"

    goto :goto_1

    :cond_0
    const-string v3, "unavailable"

    :goto_1
    const-string v4, "sun.misc.Unsafe: {}"

    invoke-virtual {v1, v2, v4, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method static isAvailable()Z
    .locals 1

    .line 1010
    sget-boolean v0, Lcom/google/protobuf/Utf8$UnsafeProcessor;->AVAILABLE:Z

    return v0
.end method


# virtual methods
.method encodeUtf8(Ljava/lang/CharSequence;[BII)I
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    .line 1205
    sget v4, Lcom/google/protobuf/Utf8$UnsafeProcessor;->ARRAY_BASE_OFFSET:I

    add-int/2addr v4, v2

    int-to-long v4, v4

    int-to-long v6, v3

    add-long/2addr v6, v4

    .line 1207
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const-string v9, " at index "

    const-string v10, "Failed writing "

    if-gt v8, v3, :cond_c

    .line 1208
    array-length v11, v1

    sub-int/2addr v11, v3

    if-lt v11, v2, :cond_c

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x80

    const-wide/16 v11, 0x1

    if-ge v2, v8, :cond_0

    .line 1217
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_0

    .line 1218
    sget-object v3, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long/2addr v11, v4

    int-to-byte v13, v13

    invoke-virtual {v3, v1, v4, v5, v13}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    add-int/lit8 v2, v2, 0x1

    move-wide v4, v11

    goto :goto_0

    :cond_0
    if-ne v2, v8, :cond_1

    .line 1222
    sget v0, Lcom/google/protobuf/Utf8$UnsafeProcessor;->ARRAY_BASE_OFFSET:I

    :goto_1
    int-to-long v0, v0

    sub-long/2addr v4, v0

    long-to-int v0, v4

    return v0

    :cond_1
    :goto_2
    if-ge v2, v8, :cond_b

    .line 1226
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_2

    cmp-long v14, v4, v6

    if-gez v14, :cond_2

    .line 1228
    sget-object v14, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v15, v4, v11

    int-to-byte v13, v13

    invoke-virtual {v14, v1, v4, v5, v13}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    move-object/from16 p0, v9

    move-wide v12, v11

    move-wide v4, v15

    move v9, v3

    move-wide/from16 v16, v6

    move-object v15, v10

    goto/16 :goto_3

    :cond_2
    const/16 v14, 0x800

    if-ge v13, v14, :cond_3

    const-wide/16 v14, 0x2

    sub-long v14, v6, v14

    cmp-long v14, v4, v14

    if-gtz v14, :cond_3

    .line 1230
    sget-object v14, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    move-object/from16 p0, v9

    move-object v15, v10

    add-long v9, v4, v11

    ushr-int/lit8 v3, v13, 0x6

    or-int/lit16 v3, v3, 0x3c0

    int-to-byte v3, v3

    invoke-virtual {v14, v1, v4, v5, v3}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 1231
    sget-object v3, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v4, v9, v11

    and-int/lit8 v13, v13, 0x3f

    const/16 v14, 0x80

    or-int/2addr v13, v14

    int-to-byte v13, v13

    invoke-virtual {v3, v1, v9, v10, v13}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    move-wide/from16 v16, v6

    move-wide v12, v11

    const/16 v9, 0x80

    goto/16 :goto_3

    :cond_3
    move-object/from16 p0, v9

    move-object v15, v10

    const v3, 0xdfff

    const v9, 0xd800

    if-lt v13, v9, :cond_4

    if-ge v3, v13, :cond_5

    :cond_4
    const-wide/16 v16, 0x3

    sub-long v16, v6, v16

    cmp-long v10, v4, v16

    if-gtz v10, :cond_5

    .line 1234
    sget-object v3, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v9, v4, v11

    ushr-int/lit8 v14, v13, 0xc

    or-int/lit16 v14, v14, 0x1e0

    int-to-byte v14, v14

    invoke-virtual {v3, v1, v4, v5, v14}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 1235
    sget-object v3, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v4, v9, v11

    ushr-int/lit8 v14, v13, 0x6

    and-int/lit8 v14, v14, 0x3f

    const/16 v11, 0x80

    or-int/lit16 v12, v14, 0x80

    int-to-byte v12, v12

    invoke-virtual {v3, v1, v9, v10, v12}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 1236
    sget-object v3, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v9, 0x1

    add-long v18, v4, v9

    and-int/lit8 v9, v13, 0x3f

    or-int/2addr v9, v11

    int-to-byte v9, v9

    invoke-virtual {v3, v1, v4, v5, v9}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    move-wide/from16 v16, v6

    move-wide/from16 v4, v18

    const/16 v9, 0x80

    const-wide/16 v12, 0x1

    goto :goto_3

    :cond_5
    const-wide/16 v10, 0x4

    sub-long v10, v6, v10

    cmp-long v10, v4, v10

    const/4 v11, 0x0

    if-gtz v10, :cond_8

    add-int/lit8 v3, v2, 0x1

    if-eq v3, v8, :cond_7

    .line 1241
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1244
    invoke-static {v13, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    .line 1245
    sget-object v9, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v12, 0x1

    add-long v10, v4, v12

    ushr-int/lit8 v14, v2, 0x12

    or-int/lit16 v14, v14, 0xf0

    int-to-byte v14, v14

    invoke-virtual {v9, v1, v4, v5, v14}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 1246
    sget-object v4, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    move-wide/from16 v16, v6

    add-long v5, v10, v12

    ushr-int/lit8 v7, v2, 0xc

    and-int/lit8 v7, v7, 0x3f

    const/16 v9, 0x80

    or-int/2addr v7, v9

    int-to-byte v7, v7

    invoke-virtual {v4, v1, v10, v11, v7}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 1247
    sget-object v4, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v10, v5, v12

    ushr-int/lit8 v7, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v9

    int-to-byte v7, v7

    invoke-virtual {v4, v1, v5, v6, v7}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 1248
    sget-object v4, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v5, v10, v12

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v9

    int-to-byte v2, v2

    invoke-virtual {v4, v1, v10, v11, v2}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    move v2, v3

    move-wide v4, v5

    :goto_3
    add-int/lit8 v2, v2, 0x1

    move v3, v9

    move-wide v11, v12

    move-object v10, v15

    move-wide/from16 v6, v16

    move-object/from16 v9, p0

    goto/16 :goto_2

    :cond_6
    move v2, v3

    .line 1242
    :cond_7
    new-instance v0, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v2, v8, v11}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(IILcom/google/protobuf/Utf8$1;)V

    throw v0

    :cond_8
    if-gt v9, v13, :cond_a

    if-gt v13, v3, :cond_a

    add-int/lit8 v1, v2, 0x1

    if-eq v1, v8, :cond_9

    .line 1251
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1253
    :cond_9
    new-instance v0, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v0, v2, v8, v11}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(IILcom/google/protobuf/Utf8$1;)V

    throw v0

    .line 1256
    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v15

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v7, p0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1261
    :cond_b
    sget v0, Lcom/google/protobuf/Utf8$UnsafeProcessor;->ARRAY_BASE_OFFSET:I

    goto/16 :goto_1

    :cond_c
    move-object v7, v9

    move-object v6, v10

    .line 1210
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, -0x1

    .line 1211
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v0, v2, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
