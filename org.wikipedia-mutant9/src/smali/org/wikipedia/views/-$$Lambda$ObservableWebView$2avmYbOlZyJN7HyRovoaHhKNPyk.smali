.class public final synthetic Lorg/wikipedia/views/-$$Lambda$ObservableWebView$2avmYbOlZyJN7HyRovoaHhKNPyk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/views/ObservableWebView;

.field public final synthetic f$1:F

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/views/ObservableWebView;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/views/-$$Lambda$ObservableWebView$2avmYbOlZyJN7HyRovoaHhKNPyk;->f$0:Lorg/wikipedia/views/ObservableWebView;

    iput p2, p0, Lorg/wikipedia/views/-$$Lambda$ObservableWebView$2avmYbOlZyJN7HyRovoaHhKNPyk;->f$1:F

    iput p3, p0, Lorg/wikipedia/views/-$$Lambda$ObservableWebView$2avmYbOlZyJN7HyRovoaHhKNPyk;->f$2:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/wikipedia/views/-$$Lambda$ObservableWebView$2avmYbOlZyJN7HyRovoaHhKNPyk;->f$0:Lorg/wikipedia/views/ObservableWebView;

    iget v1, p0, Lorg/wikipedia/views/-$$Lambda$ObservableWebView$2avmYbOlZyJN7HyRovoaHhKNPyk;->f$1:F

    iget v2, p0, Lorg/wikipedia/views/-$$Lambda$ObservableWebView$2avmYbOlZyJN7HyRovoaHhKNPyk;->f$2:F

    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/views/ObservableWebView;->lambda$handleMouseRightClick$0$ObservableWebView(FF)V

    return-void
.end method
