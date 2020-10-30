.class public final synthetic Lorg/wikipedia/util/-$$Lambda$yTNMKtBfH28vV-wI7w_QSMg1NZ8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnContextClickListener;


# static fields
.field public static final synthetic INSTANCE:Lorg/wikipedia/util/-$$Lambda$yTNMKtBfH28vV-wI7w_QSMg1NZ8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/wikipedia/util/-$$Lambda$yTNMKtBfH28vV-wI7w_QSMg1NZ8;

    invoke-direct {v0}, Lorg/wikipedia/util/-$$Lambda$yTNMKtBfH28vV-wI7w_QSMg1NZ8;-><init>()V

    sput-object v0, Lorg/wikipedia/util/-$$Lambda$yTNMKtBfH28vV-wI7w_QSMg1NZ8;->INSTANCE:Lorg/wikipedia/util/-$$Lambda$yTNMKtBfH28vV-wI7w_QSMg1NZ8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onContextClick(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->performLongClick()Z

    move-result p1

    return p1
.end method
