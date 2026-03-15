.class Lcom/google/protobuf/GeneratedMessageLite$HashCodeVisitor;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessageLite$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HashCodeVisitor"
.end annotation


# instance fields
.field private hashCode:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1817
    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$1;)V
    .locals 0

    .line 1811
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$HashCodeVisitor;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/protobuf/GeneratedMessageLite$HashCodeVisitor;)I
    .locals 0

    .line 1811
    iget p0, p0, Lcom/google/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return p0
.end method


# virtual methods
.method public visitDouble(ZDZD)D
    .locals 0

    .line 1835
    iget p1, p0, Lcom/google/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 p1, p1, 0x35

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p4

    invoke-static {p4, p5}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result p4

    add-int/2addr p1, p4

    iput p1, p0, Lcom/google/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return-wide p2
.end method

.method public visitExtensions(Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/FieldSet;)Lcom/google/protobuf/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/FieldSet<",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;",
            "Lcom/google/protobuf/FieldSet<",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;)",
            "Lcom/google/protobuf/FieldSet<",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation

    .line 1988
    iget p2, p0, Lcom/google/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Lcom/google/protobuf/FieldSet;->hashCode()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lcom/google/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return-object p1
.end method

.method public visitInt(ZIZI)I
    .locals 0

    .line 1828
    iget p1, p0, Lcom/google/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 p1, p1, 0x35

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return p2
.end method

.method public visitList(Lcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "TT;>;",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "TT;>;)",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "TT;>;"
        }
    .end annotation

    .line 1950
    iget p2, p0, Lcom/google/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lcom/google/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return-object p1
.end method

.method public visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1854
    iget p1, p0, Lcom/google/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 p1, p1, 0x35

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return-object p2
.end method

.method public visitUnknownFields(Lcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/UnknownFieldSetLite;)Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 1

    .line 1996
    iget p2, p0, Lcom/google/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Lcom/google/protobuf/UnknownFieldSetLite;->hashCode()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lcom/google/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return-object p1
.end method
