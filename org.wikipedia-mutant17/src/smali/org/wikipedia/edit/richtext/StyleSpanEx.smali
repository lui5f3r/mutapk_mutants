.class public Lorg/wikipedia/edit/richtext/StyleSpanEx;
.super Landroid/text/style/StyleSpan;
.source "StyleSpanEx.java"

# interfaces
.implements Lorg/wikipedia/edit/richtext/SpanExtents;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/wikipedia/edit/richtext/StyleSpanEx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private spanEnd:I

.field private spanStart:I

.field private syntaxRule:Lorg/wikipedia/edit/richtext/SyntaxRule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lorg/wikipedia/edit/richtext/StyleSpanEx$1;

    invoke-direct {v0}, Lorg/wikipedia/edit/richtext/StyleSpanEx$1;-><init>()V

    sput-object v0, Lorg/wikipedia/edit/richtext/StyleSpanEx;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILorg/wikipedia/edit/richtext/SyntaxRule;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 32
    iput p2, p0, Lorg/wikipedia/edit/richtext/StyleSpanEx;->spanStart:I

    .line 33
    iput-object p3, p0, Lorg/wikipedia/edit/richtext/StyleSpanEx;->syntaxRule:Lorg/wikipedia/edit/richtext/SyntaxRule;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1}, Landroid/text/style/StyleSpan;-><init>(Landroid/os/Parcel;)V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/wikipedia/edit/richtext/StyleSpanEx;->spanStart:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/wikipedia/edit/richtext/StyleSpanEx;->spanEnd:I

    .line 40
    const-class v0, Lorg/wikipedia/edit/richtext/SyntaxRule;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/wikipedia/json/GsonUnmarshaller;->unmarshal(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/edit/richtext/SyntaxRule;

    iput-object p1, p0, Lorg/wikipedia/edit/richtext/StyleSpanEx;->syntaxRule:Lorg/wikipedia/edit/richtext/SyntaxRule;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 90
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getEnd()I
    .locals 1

    .line 55
    iget v0, p0, Lorg/wikipedia/edit/richtext/StyleSpanEx;->spanEnd:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .line 45
    iget v0, p0, Lorg/wikipedia/edit/richtext/StyleSpanEx;->spanStart:I

    return v0
.end method

.method public getSyntaxRule()Lorg/wikipedia/edit/richtext/SyntaxRule;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/wikipedia/edit/richtext/StyleSpanEx;->syntaxRule:Lorg/wikipedia/edit/richtext/SyntaxRule;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 85
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setEnd(I)V
    .locals 0

    .line 60
    iput p1, p0, Lorg/wikipedia/edit/richtext/StyleSpanEx;->spanEnd:I

    return-void
.end method

.method public setStart(I)V
    .locals 0

    .line 50
    iput p1, p0, Lorg/wikipedia/edit/richtext/StyleSpanEx;->spanStart:I

    return-void
.end method

.method public setSyntaxRule(Lorg/wikipedia/edit/richtext/SyntaxRule;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lorg/wikipedia/edit/richtext/StyleSpanEx;->syntaxRule:Lorg/wikipedia/edit/richtext/SyntaxRule;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 81
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 74
    invoke-super {p0, p1, p2}, Landroid/text/style/StyleSpan;->writeToParcel(Landroid/os/Parcel;I)V

    .line 75
    iget p2, p0, Lorg/wikipedia/edit/richtext/StyleSpanEx;->spanStart:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget p2, p0, Lorg/wikipedia/edit/richtext/StyleSpanEx;->spanEnd:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object p2, p0, Lorg/wikipedia/edit/richtext/StyleSpanEx;->syntaxRule:Lorg/wikipedia/edit/richtext/SyntaxRule;

    invoke-static {p2}, Lorg/wikipedia/json/GsonMarshaller;->marshal(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
