.class Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;
.super Ljava/lang/Object;
.source "SnippetImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/page/shareafact/SnippetImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextLayoutParams"
.end annotation


# instance fields
.field private final align:Landroid/text/Layout$Alignment;

.field private final lineWidth:I

.field private final spacingMultiplier:F

.field private final text:Ljava/lang/CharSequence;

.field private final textPaint:Landroid/text/TextPaint;


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)V
    .locals 6

    .line 425
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;IFLandroid/text/Layout$Alignment;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;IFLandroid/text/Layout$Alignment;)V
    .locals 0

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput-object p1, p0, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;->text:Ljava/lang/CharSequence;

    .line 417
    iput-object p2, p0, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;->textPaint:Landroid/text/TextPaint;

    .line 418
    iput p3, p0, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;->lineWidth:I

    .line 419
    iput p4, p0, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;->spacingMultiplier:F

    .line 420
    iput-object p5, p0, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;->align:Landroid/text/Layout$Alignment;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;IFLorg/wikipedia/page/shareafact/SnippetImage$1;)V
    .locals 0

    .line 398
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)V

    return-void
.end method

.method constructor <init>(Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;Ljava/lang/CharSequence;)V
    .locals 0

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    iput-object p2, p0, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;->text:Ljava/lang/CharSequence;

    .line 408
    iget-object p2, p1, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;->textPaint:Landroid/text/TextPaint;

    iput-object p2, p0, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;->textPaint:Landroid/text/TextPaint;

    .line 409
    iget p2, p1, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;->lineWidth:I

    iput p2, p0, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;->lineWidth:I

    .line 410
    iget p2, p1, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;->spacingMultiplier:F

    iput p2, p0, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;->spacingMultiplier:F

    .line 411
    iget-object p1, p1, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;->align:Landroid/text/Layout$Alignment;

    iput-object p1, p0, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;->align:Landroid/text/Layout$Alignment;

    return-void
.end method

.method static synthetic access$100(Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;)Landroid/text/TextPaint;
    .locals 0

    .line 398
    iget-object p0, p0, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;->textPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$200(Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;)Ljava/lang/CharSequence;
    .locals 0

    .line 398
    iget-object p0, p0, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$300(Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;)I
    .locals 0

    .line 398
    iget p0, p0, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;->lineWidth:I

    return p0
.end method

.method static synthetic access$400(Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;)Landroid/text/Layout$Alignment;
    .locals 0

    .line 398
    iget-object p0, p0, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;->align:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method static synthetic access$500(Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;)F
    .locals 0

    .line 398
    iget p0, p0, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;->spacingMultiplier:F

    return p0
.end method
