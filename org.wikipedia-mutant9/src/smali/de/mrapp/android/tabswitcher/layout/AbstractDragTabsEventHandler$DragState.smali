.class public final enum Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;
.super Ljava/lang/Enum;
.source "AbstractDragTabsEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DragState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

.field public static final enum DRAG_TO_END:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

.field public static final enum DRAG_TO_START:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

.field public static final enum NONE:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

.field public static final enum OVERSHOOT_END:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

.field public static final enum OVERSHOOT_START:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

.field public static final enum PULLING_DOWN:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

.field public static final enum SWIPE:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 52
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->NONE:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    .line 57
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    const-string v1, "DRAG_TO_START"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->DRAG_TO_START:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    .line 62
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    const-string v1, "DRAG_TO_END"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->DRAG_TO_END:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    .line 67
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    const-string v1, "OVERSHOOT_START"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->OVERSHOOT_START:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    .line 72
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    const-string v1, "OVERSHOOT_END"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->OVERSHOOT_END:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    .line 77
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    const-string v1, "SWIPE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->SWIPE:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    .line 82
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    const-string v1, "PULLING_DOWN"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->PULLING_DOWN:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    const/4 v1, 0x7

    new-array v1, v1, [Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    .line 47
    sget-object v9, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->NONE:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    aput-object v9, v1, v2

    sget-object v2, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->DRAG_TO_START:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    aput-object v2, v1, v3

    sget-object v2, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->DRAG_TO_END:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    aput-object v2, v1, v4

    sget-object v2, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->OVERSHOOT_START:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    aput-object v2, v1, v5

    sget-object v2, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->OVERSHOOT_END:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    aput-object v2, v1, v6

    sget-object v2, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->SWIPE:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->$VALUES:[Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;
    .locals 1

    .line 47
    const-class v0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    return-object p0
.end method

.method public static values()[Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;
    .locals 1

    .line 47
    sget-object v0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->$VALUES:[Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    invoke-virtual {v0}, [Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    return-object v0
.end method
