.class public Lorg/wikipedia/edit/richtext/ColorSpanEx;
.super Landroid/text/style/ForegroundColorSpan;
.source "ColorSpanEx.java"

# interfaces
.implements Lorg/wikipedia/edit/richtext/SpanExtents;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/wikipedia/edit/richtext/ColorSpanEx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private backColor:I

.field private spanEnd:I

.field private spanStart:I

.field private syntaxRule:Lorg/wikipedia/edit/richtext/SyntaxRule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lorg/wikipedia/edit/richtext/ColorSpanEx$1;

    invoke-direct {v0}, Lorg/wikipedia/edit/richtext/ColorSpanEx$1;-><init>()V

    sput-object v0, Lorg/wikipedia/edit/richtext/ColorSpanEx;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIILorg/wikipedia/edit/richtext/SyntaxRule;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 35
    iput p3, p0, Lorg/wikipedia/edit/richtext/ColorSpanEx;->spanStart:I

    .line 36
    iput-object p4, p0, Lorg/wikipedia/edit/richtext/ColorSpanEx;->syntaxRule:Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 37
    iput p2, p0, Lorg/wikipedia/edit/richtext/ColorSpanEx;->backColor:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/wikipedia/edit/richtext/ColorSpanEx;->spanStart:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/wikipedia/edit/richtext/ColorSpanEx;->spanEnd:I

    .line 44
    const-class v0, Lorg/wikipedia/edit/richtext/SyntaxRule;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wikipedia/json/GsonUnmarshaller;->unmarshal(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/edit/richtext/SyntaxRule;

    iput-object v0, p0, Lorg/wikipedia/edit/richtext/ColorSpanEx;->syntaxRule:Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lorg/wikipedia/edit/richtext/ColorSpanEx;->backColor:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 102
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getEnd()I
    .locals 1

    .line 66
    iget v0, p0, Lorg/wikipedia/edit/richtext/ColorSpanEx;->spanEnd:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .line 56
    iget v0, p0, Lorg/wikipedia/edit/richtext/ColorSpanEx;->spanStart:I

    return v0
.end method

.method public getSyntaxRule()Lorg/wikipedia/edit/richtext/SyntaxRule;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/wikipedia/edit/richtext/ColorSpanEx;->syntaxRule:Lorg/wikipedia/edit/richtext/SyntaxRule;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 97
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setEnd(I)V
    .locals 0

    .line 71
    iput p1, p0, Lorg/wikipedia/edit/richtext/ColorSpanEx;->spanEnd:I

    return-void
.end method

.method public setStart(I)V
    .locals 0

    .line 61
    iput p1, p0, Lorg/wikipedia/edit/richtext/ColorSpanEx;->spanStart:I

    return-void
.end method

.method public setSyntaxRule(Lorg/wikipedia/edit/richtext/SyntaxRule;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lorg/wikipedia/edit/richtext/ColorSpanEx;->syntaxRule:Lorg/wikipedia/edit/richtext/SyntaxRule;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 93
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 50
    iget v0, p0, Lorg/wikipedia/edit/richtext/ColorSpanEx;->backColor:I

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 51
    invoke-super {p0, p1}, Landroid/text/style/ForegroundColorSpan;->updateDrawState(Landroid/text/TextPaint;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 85
    invoke-super {p0, p1, p2}, Landroid/text/style/ForegroundColorSpan;->writeToParcel(Landroid/os/Parcel;I)V

    .line 86
    iget p2, p0, Lorg/wikipedia/edit/richtext/ColorSpanEx;->spanStart:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget p2, p0, Lorg/wikipedia/edit/richtext/ColorSpanEx;->spanEnd:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-object p2, p0, Lorg/wikipedia/edit/richtext/ColorSpanEx;->syntaxRule:Lorg/wikipedia/edit/richtext/SyntaxRule;

    invoke-static {p2}, Lorg/wikipedia/json/GsonMarshaller;->marshal(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget p2, p0, Lorg/wikipedia/edit/richtext/ColorSpanEx;->backColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
