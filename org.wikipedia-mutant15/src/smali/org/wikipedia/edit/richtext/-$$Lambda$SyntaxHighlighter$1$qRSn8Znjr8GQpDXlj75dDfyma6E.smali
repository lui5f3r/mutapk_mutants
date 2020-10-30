.class public final synthetic Lorg/wikipedia/edit/richtext/-$$Lambda$SyntaxHighlighter$1$qRSn8Znjr8GQpDXlj75dDfyma6E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/BiFunction;


# static fields
.field public static final synthetic INSTANCE:Lorg/wikipedia/edit/richtext/-$$Lambda$SyntaxHighlighter$1$qRSn8Znjr8GQpDXlj75dDfyma6E;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/wikipedia/edit/richtext/-$$Lambda$SyntaxHighlighter$1$qRSn8Znjr8GQpDXlj75dDfyma6E;

    invoke-direct {v0}, Lorg/wikipedia/edit/richtext/-$$Lambda$SyntaxHighlighter$1$qRSn8Znjr8GQpDXlj75dDfyma6E;-><init>()V

    sput-object v0, Lorg/wikipedia/edit/richtext/-$$Lambda$SyntaxHighlighter$1$qRSn8Znjr8GQpDXlj75dDfyma6E;->INSTANCE:Lorg/wikipedia/edit/richtext/-$$Lambda$SyntaxHighlighter$1$qRSn8Znjr8GQpDXlj75dDfyma6E;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-static {p1, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$1;->lambda$run$0(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    return-object p1
.end method
